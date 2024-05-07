#include <ros/ros.h>
#include <geometry_msgs/PoseWithCovariance.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <tf/transform_broadcaster.h>

#include <map>
#include <math.h>
#include <fstream>
#include <iostream>
#include <vector>

// オドメトリから得られる現在の位置
double robot_x, robot_y;
double roll, pitch, yaw;
geometry_msgs::Quaternion robot_r;

geometry_msgs::Twist twist; // 指令する速度、角速度
// 初期速度
double v0 = 0.0;
// 初期角速度
double w0 = 0.0;

std::map<std::string, std::string> params_;

// オドメトリのコールバック
void odom_callback(const nav_msgs::Odometry::ConstPtr &msg)
{
	robot_x = msg->pose.pose.position.x;
	robot_y = msg->pose.pose.position.y;
	robot_r = msg->pose.pose.orientation;
}

// クォータニオンをオイラーに変換                                               
void geometry_quat_to_rpy(double &roll, double &pitch, double &yaw, geometry_msgs::Quaternion geometry_quat)
{
    tf::Quaternion quat;
    quaternionMsgToTF(geometry_quat, quat);
    tf::Matrix3x3(quat).getRPY(roll, pitch, yaw);
}

// 直線追従をするために指令する速度を計算してtwistに格納
void follow_line(double x, double y, double th)
{
	// 現在のロボットのroll, pitch, yawを計算
	geometry_quat_to_rpy(roll, pitch, yaw, robot_r);

	// パラメータファイルに入っている係数
	double k_eta = std::stod(params_["L_K1"]) / 100;
	double k_phai = std::stod(params_["L_K2"]) / 100;
	double k_w = std::stod(params_["L_K3"]) / 100;

	// ロボットの最大速度、最大角速度
	double v_max = std::stod(params_["MAX_VEL"]);
	double w_max = std::stod(params_["MAX_W"]);

	// ロボットと直線の距離(実際には一定以上の距離でクリップ)
    double eta = 0;
    if (th == M_PI / 2.0)
        eta = -(robot_x - x);
    else if (th == -M_PI / 2.0)
        eta = robot_x - x;
    else if (abs(th) < M_PI / 2.0)
        eta = (-tan(th) * robot_x + robot_y - y + x * tan(th)) / sqrt(tan(th) * tan(th) + 1);
    else
        eta = -(-tan(th) * robot_x + robot_y - y + x * tan(th)) / sqrt(tan(th) * tan(th) + 1);
    if (eta > std::stod(params_["L_DIST"]))
        eta = std::stod(params_["L_DIST"]);
    else if (eta < -std::stod(params_["L_DIST"]))
        eta = -std::stod(params_["L_DIST"]);

	// 直線に対するロボットの向き(-M_PIからM_PIに収まるように処理)
	double phai = yaw - th;
	while (phai <= -M_PI || M_PI <= phai)
	{
		if (phai <= -M_PI)
			phai = phai + 2 * M_PI;
		else
			phai = phai - 2 * M_PI;
	}

	// 目標となるロボットの角速度と現在の角速度の差
	double w_diff = w0;

	// 角速度
	double w = w0 + (-k_eta * eta - k_phai * phai - k_w* w_diff);
	if (w > w_max)
		w = w_max;
	else if (w < -w_max)
		w = -w_max;

	// 並進速度
	double v = v0;
	// if (v0 != 0)
	// 	v = v0 - v0 / abs(v0) * abs(w0);
	if (v > v_max)
		v = v_max;
	else if (v < -v_max)
		v = -v_max;

	twist.linear.x = v;
	twist.linear.y = 0.0;
	twist.linear.z = 0.0;
	twist.angular.x = 0.0;
	twist.angular.y = 0.0;
	twist.angular.z = w;

	// 現在の角速度を次の時間の計算に使用
	w0 = twist.angular.z;

	// デバック用のプリント
	// std::cout << "eta: " << eta << "  phai; " << phai << "  w_diff:" << w_diff << std::endl;
	// std::cout << "v: " << twist.linear.x << "   w: " << twist.angular.z << std::endl;
	// std::cout << "(x,y) = (" << robot_x << "," << robot_y << ")" << std::endl;
	// std::cout << "------------------------------" << std::endl;

	
}

void get_param(void){
	std::ifstream read_param_file;
	read_param_file.open(params_["param_file"], std::ios::in);

	std::string buffer_read;

	while(std::getline(read_param_file, buffer_read))
	{
		std::string row = "";
		std::string name_param = "";

        for (char &x : buffer_read)
        {
            if (x != ' ') {
                //add element to vector row
            std::string row_alpha{x};
			row = row + row_alpha;
			} else if(row != "" && name_param == ""){
				if ((row == "L_K1") | (row == "L_K2") | (row == "L_K3") | (row == "L_DIST") | (row == "MAX_VEL") | (row == "MAX_W")){
					name_param = row;
					row = "";
				}else{
					break;
				}
			} else if(row != ""){
				params_[name_param] = row;
				row = "";
				name_param = "";
			}

        }
	}
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "follow_line");
	ros::NodeHandle nh;
	ros::NodeHandle pnh("~");
	ros::Subscriber odom_sub = nh.subscribe("ypspur_ros/odom", 100, odom_callback);
	ros::Publisher twist_pub = nh.advertise<geometry_msgs::Twist>("ypspur_ros/cmd_vel", 100);

	pnh.param<std::string>("param_file", params_["param_file"], "/home/muttaqien-m/researches/programs/platform/yp-robot-params/robot-params/beego.param");

	robot_x = 0.0;
	robot_y = 0.0;
	robot_r.x = 0.0;
	robot_r.y = 0.0;
	robot_r.z = 0.0;
	robot_r.w = 1.0;

	twist.linear.x = 0.0;
	twist.linear.y = 0.0;
	twist.linear.z = 0.0;
	twist.angular.x = 0.0;
	twist.angular.y = 0.0;
	twist.angular.z = 0.0;

	std::cout << "v: " << twist.linear.x << "   w: " << twist.angular.z << std::endl;

	ros::Rate loop_rate(100);

	get_param();

	// 速度
	v0 = std::stod(params_["MAX_VEL"]);
	// 現在の角速度
	w0 = twist.angular.z;
	
	double x = 0.0;
	double y = 0.0;
	double theta = M_PI / 4;

	while (ros::ok())
	{
		ros::spinOnce();
		follow_line(x, y, theta);
		twist_pub.publish(twist);
		loop_rate.sleep();
	}

	return 0;
}