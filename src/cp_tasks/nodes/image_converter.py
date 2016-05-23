#!/usr/bin/env python
from __future__ import print_function
import roslib
roslib.load_manifest('read_camera')
import sys
import rospy
import cv2
import time
from std_msgs.msg import String
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError


class image_converter:

#
    def __init__(self):
        self.image_pub = rospy.Publisher("/camera/image_raw",Image)
        self.camera = cv2.VideoCapture(0)
        self.bridge = CvBridge()


    def readCamera(self):
        (grabbed, cv_image) = self.camera.read()
        (rows,cols,channels) = cv_image.shape
        if cols > 60 and rows > 60 :
            cv2.circle(cv_image, (50,50), 10, 255)
            #cv2.imshow("Image window", cv_image)
            cv2.waitKey(3)
            try:
                self.image_pub.publish(self.bridge.cv2_to_imgmsg(cv_image, "bgr8"))
            except CvBridgeError as e:
                print(e)


def main(args):
    ic = image_converter()
    rospy.init_node('image_converter', anonymous=True)

    while not rospy.is_shutdown():
        ic.readCamera()
#
#
if __name__ == '__main__':
    main(sys.argv)
