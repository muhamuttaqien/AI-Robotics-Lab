#!/usr/bin/env python3
#############################################################
#					urg_obstacle_detection.py				#
#-----------------------------------------------------------#
#		0AL5441 Human-centerd AI A							#
#		Intelligent Autonomous Mobile Robotics				#
#		Ayanori Yorozu: yorozu@cs.tsukuba.ac.jp				#
#############################################################
import	math
import	rospy
import	tf
import	tf.transformations
from	sensor_msgs.msg		import Joy
from	sensor_msgs.msg		import LaserScan
from	geometry_msgs.msg	import Pose2D
from	geometry_msgs.msg	import Twist
from	nav_msgs.msg		import Odometry



#############################################################
#					Yamabico Navigation						#
#############################################################
class YamabicoNavigation(object):

	#========================================================
	#	Constructor (Initialization)
	#========================================================
	def __init__(self):

		# Initialize node -----------------------------------
		rospy.init_node('urg_obstacle_detection')

		# Class variables -----------------------------------
		self.odom				= Pose2D()		# Odometry(x,y,theta)
		self.lidar_pos_x		= 0.0			# beego/speego: 0.0 m, m1: 0.15 m
		self.lidar_pos_y		= 0.0			# beego/speego/m1: 0.0 m
		self.lidar_pos_theta	= 0.0			# beego/speego/m1: 0.0 rad
		self.robot_r			= 0.1			# robot size + margin: 0.3 m
		self.check_angle		= 0.0			# obstacle check front side: 0 rad
		self.check_dist			= 0.5			# obstacle check distance: 1.0 m

		# Subscriber definition -----------------------------
		self.scan_sub	= rospy.Subscriber('scan', LaserScan, self.scanCallback, queue_size=1)

		# Publisher definition ------------------------------
		self.cmd_vel_pub	= rospy.Publisher('ypspur_ros/cmd_vel', Twist, queue_size=1)

		# process start -------------------------------------
		rospy.loginfo("Ready to start.-------------")
		rospy.spin()


	#========================================================
	#	scanCallback: get current lidar data
	#========================================================
	def scanCallback(self, in_msg):

		cmd_vel	= Twist()

		obstacle_flg	= False

		# check all point -----------------------------------
		for i in range(len(in_msg.ranges)):

			# wrong range remove
			if(in_msg.ranges[i] > in_msg.range_min*2.0):

				# scan point in sensor coodinate system
				p_urg_x	= in_msg.ranges[i]*math.cos(in_msg.angle_min + in_msg.angle_increment*i)
				p_urg_y	= in_msg.ranges[i]*math.sin(in_msg.angle_min + in_msg.angle_increment*i)

				# scan point in robot coodinate system
				p_x		= self.lidar_pos_x + p_urg_x*math.cos(self.lidar_pos_theta) - p_urg_y*math.sin(self.lidar_pos_theta)
				p_y		= self.lidar_pos_y + p_urg_x*math.sin(self.lidar_pos_theta) + p_urg_y*math.cos(self.lidar_pos_theta)
				p_theta	= math.atan2(p_y, p_x)

				# check the obstacle in reference direction
				d_angle	= p_theta - self.check_angle

				# front side
				if math.fabs(d_angle) < math.pi/2.0:
					width	= in_msg.ranges[i]*math.sin(d_angle)
					dist	= math.hypot(p_x, p_y)

					# check the scan point is obstacle or not
					if width < self.robot_r and dist < self.check_dist:
						obstacle_flg	= True
						break

		# comments
		if obstacle_flg == False:
			print("No obstacle in front")
			cmd_vel.linear.x	= 0.15
			cmd_vel.angular.z	= 0.0
		else:
			print("Obstacle in front, robot should stop or avoid")
			cmd_vel.linear.x	= 0.0
			cmd_vel.angular.z	= 0.0

		# --------------------------------------------------
		#	publish cmd_vel
		# --------------------------------------------------
		self.cmd_vel_pub.publish(cmd_vel)


#############################################################
#						Main function						#
#############################################################
if __name__ == "__main__":

	nav	= YamabicoNavigation()

