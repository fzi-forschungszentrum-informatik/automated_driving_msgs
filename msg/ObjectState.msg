# Message for the state of an object
# License: BSD

# Header
std_msgs/Header header

# Lifetime ID of the object
uint32 object_id

# Existence measure
#    Range: [0, 1]
float32 existence_probability

# Object classification
ObjectClassification classification

# Motion state of the object
MotionState motion_state

# Current motion prediction of the object
MotionPrediction motion_prediction

# An oriented bounding box surrounding the object
#    Relative to motion_state/pose/pose
BoundingBox bounding_box

# A convex hull surrounding the object
#    Relative to motion_state/pose/pose
#    Similiar to bounding_box but capable of representing more complex shapes
#    For further details: http://docs.ros.org/api/shape_msgs/html/msg/Mesh.html
shape_msgs/Mesh hull
