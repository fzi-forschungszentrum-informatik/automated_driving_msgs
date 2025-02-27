# A 3D bounding box that can be positioned and rotated about its center (6 DOF)
# Based on http://docs.ros.org/en/noetic/api/vision_msgs/html/msg/BoundingBox3D.html

# The 3D position and orientation of the bounding box center
geometry_msgs/Pose center

# The dimensions of the bounding box, in meters, surrounding the center of the
#      bounding box
geometry_msgs/Vector3 dimensions

