#!/usr/bin/env python3
#############################################################
#					teleop_twist_joy.py						#
#-----------------------------------------------------------#
#		0AL5441 Human-centerd AI A							#
#		Intelligent Autonomous Mobile Robotics				#
#		Ayanori Yorozu: yorozu@cs.tsukuba.ac.jp				#
#############################################################
import rospy
from sensor_msgs.msg import Joy
from geometry_msgs.msg import Twist


#############################################################
#						Joy Twist							#
#############################################################
class JoyTwist(object):

	#========================================================
	#	Constructor (Initialization)
	#========================================================
	def __init__(self):
		self._joy_sub = rospy.Subscriber('/joy', Joy, self.joyCallback, queue_size=1)
		self._twist_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
		self.max_speed = rospy.get_param('~max_speed', 0.1)
		self.max_turn = rospy.get_param('~max_turn', 0.1)


	#========================================================
	#	joyCallback: get current msgs and publish cmd_vel
	#========================================================
	def joyCallback(self, joy_msg):

		twist = Twist()
		twist.linear.x = 0.0
		twist.linear.y = 0.0
		twist.linear.z = 0.0
		twist.angular.x = 0.0
		twist.angular.y = 0.0
		twist.angular.z = 0.0

		# Translational motion --------------------------
		twist.linear.x = joy_msg.axes[1] * self.max_speed

		# Rotational motion -----------------------------
		twist.angular.z = joy_msg.axes[3] * self.max_turn

		# print twist
		self._twist_pub.publish(twist)


#############################################################
#						Main function						#
#############################################################
if __name__ == "__main__":

	rospy.init_node('teleop_twist_joy')
	joy_twist = JoyTwist()
	rospy.spin()
