# Message for a desired position of an object
# License: BSD

# Time Delta, after which the position is to be reached
#    For further details: http://wiki.ros.org/std_msgs
duration delta_time

# The Position Delta to be reached
#    This delta is always relative to the current position and orientation of the object
#    For further details: http://docs.ros.org/api/geometry_msgs/html/msg/Pose.html
geometry_msgs/Pose delta_pose
