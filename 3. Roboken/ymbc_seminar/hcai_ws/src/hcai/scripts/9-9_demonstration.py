#!/usr/bin/env python3
#############################################################
#						yolo_motion.py						#
#-----------------------------------------------------------#
#		0AL5441 Human-centerd AI A							#
#		Intelligent Autonomous Mobile Robotics				#
#		Ayanori Yorozu: yorozu@cs.tsukuba.ac.jp				#
#############################################################
import	math
import	rospy
import	tf
import	tf.transformations
from	sensor_msgs.msg			import Joy
from	sensor_msgs.msg			import LaserScan
from	geometry_msgs.msg		import Pose2D
from	geometry_msgs.msg		import Twist
from	nav_msgs.msg			import Odometry
from	darknet_ros_msgs.msg	import BoundingBoxes



#############################################################
#					Yamabico Navigation						#
#############################################################
class YamabicoNavigation(object):

	#========================================================
	#	Constructor (Initialization)
	#========================================================
	def __init__(self):

		# Initialize node -----------------------------------
		rospy.init_node('demonstration')

		# Class variables -----------------------------------
		self.odom				= Pose2D()		# Odometry(x,y,theta)
		self.state				= 0				# state 0:stop, 1:turn left, 2:turn right
		self.max_linear_vel		= 0.15			# max linear vel(v_x) [m]
		self.max_angular_vel	= 0.15			# max angular vel(omega) [rad]

		# Subscriber definition -----------------------------
		self.yolo_sub	= rospy.Subscriber('darknet_ros/bounding_boxes', BoundingBoxes, self.yoloCallback, queue_size=1)

		# Timer function ------------------------------------
		self.timer		= rospy.Timer(rospy.Duration(0.1), self.mainLoop)	# call control loop each 0.1s

		# Publisher definition ------------------------------
		self.cmd_vel_pub	= rospy.Publisher('ypspur_ros/cmd_vel', Twist, queue_size=1)

		# process start -------------------------------------
		rospy.loginfo("Ready to start.-------------")
		rospy.spin()


	#========================================================
	#	yoloCallback: get current object detection
	#========================================================
	def yoloCallback(self, in_msg):

		cmd_vel	= Twist()

		stop_flg	= False
		left_flg	= False
		right_flg	= False

		# object num -----------------------------------------
		print("\ndetected object num:", len(in_msg.bounding_boxes))

		# check all detections -------------------------------

		is_human = False
		is_phone = False

		for i in range(len(in_msg.bounding_boxes)):

			print("[",str(i),"] Class", in_msg.bounding_boxes[i].Class)
			print("x_min:", in_msg.bounding_boxes[i].xmin)
			print("x_max:", in_msg.bounding_boxes[i].xmax)
			print("y_min:", in_msg.bounding_boxes[i].ymin)
			print("y_max:", in_msg.bounding_boxes[i].ymax)
			print("probability:", in_msg.bounding_boxes[i].probability)

			if in_msg.bounding_boxes[i].Class == "person":
				is_human = True
			if in_msg.bounding_boxes[i].Class == "cell phone":
				is_phone = True
				
		# update the state ----------------------------------
		# priority: stop > turn left > turn right
		if is_human == True:
			self.state = 0
		if is_phone == True:
			self.state = 1
		if is_human == True and is_phone == True:
			self.state	= 2

	#========================================================
	#	mainLoop: 
	#========================================================
	def mainLoop(self, in_event):

		cmd_vel	= Twist()

		import random

		random_decimal = random.uniform(0.0, 0.2)

		# -------------------------------------------------
		# check current state & set cmd_vel
		# ----------------------------------0---------------
		# stop
		if self.state == 0:
			print("PERSON DETECTED!")
			cmd_vel.linear.x	= 0.0
			cmd_vel.angular.z	= 0.3

			self.cmd_vel_pub.publish(cmd_vel)

		if self.state == 1:
			print("PHONE DETECTED!")
		
		if self.state == 2:
			print("PERSON & PHONE DETECTED!")

			cmd_vel.linear.x	= 0.3
			cmd_vel.angular.z	= 0.0

			self.cmd_vel_pub.publish(cmd_vel)

#############################################################
#						Main function						#
#############################################################
if __name__ == "__main__":

	nav	= YamabicoNavigation()

