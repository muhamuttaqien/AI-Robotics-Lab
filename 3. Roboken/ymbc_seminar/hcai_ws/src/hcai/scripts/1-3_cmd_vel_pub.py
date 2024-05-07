#!/usr/bin/env python3
#############################################################
#						cmd_vel_pub.py						#
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
		rospy.init_node('cmd_vel_pub')

		# Class variables -----------------------------------
		self.odom				= Pose2D()		# Odometry(x,y,theta)
		self.time_start			= rospy.get_time()	# get current time

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

		cmd_vel			= Twist()
		time_current	= rospy.get_time()
		time_from_start	= time_current - self.time_start	# [s]

		# --------------------------------------------------
		#	Change motion based on time
		# --------------------------------------------------
		# 0-10s: go straight
		if time_from_start < 10.0:
			print("Go straight", time_from_start)
			cmd_vel.linear.x	= 0.15
			cmd_vel.angular.z	= 0.0
		
		# 10-20s: turn left on the spot
		elif time_from_start < 20.0:
			cmd_vel.linear.x	= 0.0
			cmd_vel.angular.z	= 0.15
			print("Turn left on the spot", time_from_start)

		# 20-30s: turn right not on the spot
		elif time_from_start < 30.0:
			cmd_vel.linear.x	= 0.15
			cmd_vel.angular.z	= -0.15
			print("Turn right", time_from_start)

		# 30-40s: Go back
		elif time_from_start < 40.0:
			cmd_vel.linear.x	= -0.15
			cmd_vel.angular.z	= 0.0
			print("Go back", time_from_start)

		# 40s-: Stop
		# 30-40s: Go back
		else:
			cmd_vel.linear.x	= 0.0
			cmd_vel.angular.z	= 0.0
			print("Stop", time_from_start)

		# --------------------------------------------------
		#	publish cmd_vel
		# --------------------------------------------------
		self.cmd_vel_pub.publish(cmd_vel)



#############################################################
#						Main function						#
#############################################################
if __name__ == "__main__":

	nav	= YamabicoNavigation()

