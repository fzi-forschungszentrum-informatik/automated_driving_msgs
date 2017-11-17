# Message for the state of an object
# License: BSD

# Header
Header header

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

# Standard Message for the object dimensions
#    Relative to motion_state/pose/pose
#    For further details: http://docs.ros.org/api/shape_msgs/html/msg/Mesh.html
shape_msgs/Mesh hull
