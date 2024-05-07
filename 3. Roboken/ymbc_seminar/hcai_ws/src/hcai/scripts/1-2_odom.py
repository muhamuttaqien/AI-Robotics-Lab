#!/usr/bin/env python3
#############################################################
#							odom.py							#
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
		rospy.init_node('odom_test')

		# Class variables -----------------------------------
		self.odom	= Pose2D()		# Odometry(x,y,theta)

		# Subscriber definition -----------------------------
		self.odom_sub = rospy.Subscriber('/ypspur_ros/odom', Odometry, self.odomCallback, queue_size=1)

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


#############################################################
#						Main function						#
#############################################################
if __name__ == "__main__":

	nav	= YamabicoNavigation()

