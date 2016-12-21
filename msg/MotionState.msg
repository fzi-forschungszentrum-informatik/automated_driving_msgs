# This represents an estimate of a MotionState (position, velocity and acceleration) in free space.
# NOTE: Similar to nav_msgs/Odometry but including acceleration (http://docs.ros.org/api/nav_msgs/html/msg/Odometry.html)
# License: BSD

# Header
#   frame_id of the global reference frame (common: "map", "odom")
Header header

#   frame_id of the child frame that this MotionState describes (common: "vehicle", "sensor_x")
string child_frame_id

# Pose (Position + Orientation)
#   must be specified in the coordinate frame given by header.frame_id
#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/PoseWithCovariance.html
geometry_msgs/PoseWithCovariance pose

# Velocity
#   must be specified in the coordinate frame given by child_frame_id
#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/TwistWithCovariance.html
geometry_msgs/TwistWithCovariance twist

# Acceleration
#   must be specified in the coordinate frame given by child_frame_id
#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/AccelWithCovariance.html
geometry_msgs/AccelWithCovariance accel

# Treatment of unavailable data: almost as in http://docs.ros.org/api/sensor_msgs/html/msg/Imu.html:
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the
# variance of each measurement, e.g. from a datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as "covariance unknown", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements, please set _the respective diagonal_ element
# of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the _diagonal_ elements
# of each covariance matrix, and disregard the associated estimates.
