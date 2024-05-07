#!/usr/bin/env python3
#############################################################
#					move_to_point.py						#
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
		rospy.init_node('move_to_point')

		# Class variables -----------------------------------
		self.odom				= Pose2D()		# Odometry(x,y,theta)
		self.max_linear_vel		= 0.3			# max linear vel(v_x) [m]
		self.max_angular_vel	= 0.5			# max angular vel(omega) [rad]
		self.goal				= [0.5, -0.5]	# goal position (x[m],y[m])
		self.goal_check_dist	= 0.2			# threshold for reaching the goal [m]

		# Subscriber definition -----------------------------
		self.odom_sub	= rospy.Subscriber('ypspur_ros/odom', Odometry, self.odomCallback, queue_size=1)

		# Publisher definition ------------------------------
		self.cmd_vel_pub	= rospy.Publisher('ypspur_ros/cmd_vel', Twist, queue_size=1)

		# Timer function ------------------------------------
		self.timer		= rospy.Timer(rospy.Duration(0.1), self.mainLoop)	# call control loop each 0.1s

		# process start -------------------------------------
		rospy.loginfo("Ready to start.-------------")
		rospy.spin()


	#========================================================
	#	odomCallback: get current pose
	#========================================================
	def odomCallback(self, in_msg):

		# quotanion to euler
		orientation = (
			in_msg.pose.pose.orientation.x,
			in_msg.pose.pose.orientation.y,
			in_msg.pose.pose.orientation.z,
			in_msg.pose.pose.orientation.w
		)
		euler	= tf.transformations.euler_from_quaternion(orientation)

		self.odom.x		= in_msg.pose.pose.position.x
		self.odom.y		= in_msg.pose.pose.position.y
		self.odom.theta	= euler[2]		# yaw angle

		print("x=",self.odom.x, "y=",self.odom.y, "theta=",self.odom.theta)


	#========================================================
	#	mainLoop: 
	#========================================================
	def mainLoop(self, in_event):

		cmd_vel	= Twist()
		k_eta	= 1.0
		k_omega	= 1.0

		# -------------------------------------------------
		# check current state
		# -------------------------------------------------
		# dist to goal
		goal_dist	= math.hypot((self.goal[0] - self.odom.x),(self.goal[1] - self.odom.y))
		# angle to goal
		goal_angle	= math.atan2(self.goal[1] - self.odom.y, self.goal[0] - self.odom.x) - self.odom.theta
		if goal_angle > math.pi:
			goal_angle -= 2.0*math.pi
		if goal_angle < -math.pi:
			goal_angle += 2.0*math.pi

		# --------------------------------------------------
		# reach the goal? and set cmd_vel
		# --------------------------------------------------
		# reach the goal
		if(goal_dist < self.goal_check_dist):
			cmd_vel.linear.x	= 0.0
			cmd_vel.angular.z	= 0.0
			print("Reach the goal!! STOP")

		# not reach the goal
		else:
			# v_x
			cmd_vel.linear.x	= k_eta*goal_dist
			if(cmd_vel.linear.x > self.max_linear_vel):
				cmd_vel.linear.x = self.max_linear_vel
			
			# omega
			cmd_vel.angular.z	= k_omega*goal_angle
			if(cmd_vel.angular.z > self.max_angular_vel):
				cmd_vel.angular.z = self.max_angular_vel
			if(cmd_vel.angular.z < -self.max_angular_vel):
				cmd_vel.angular.z = -self.max_angular_vel

			print("goal_dist=",goal_dist, "goal_angle=",goal_angle, "v_x=",cmd_vel.linear.x, "omega=",cmd_vel.angular.z)


			
		# --------------------------------------------------
		#	publish cmd_vel
		# --------------------------------------------------
		self.cmd_vel_pub.publish(cmd_vel)



#############################################################
#						Main function						#
#############################################################
if __name__ == "__main__":

	nav	= YamabicoNavigation()

