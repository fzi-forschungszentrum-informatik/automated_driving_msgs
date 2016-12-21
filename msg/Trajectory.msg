# Message representing a trajectory as consecutive motion states
# NOTE: not compatible to http://wiki.ros.org/trajectory_msgs
# License: BSD

# ID of the trajectory
#    Meant to be unique for one set of trajectories
uint32 id

# Probability of the trajectory
#    Range: [0, 1]
#    To be set only if a set of trajectories is given
float32 probability

# Array of motion states with time that describe the trajectory
#    Sorted ascending by time
MotionState[] motion_states

# Array of polygons to describe the set-based position uncertainty
#    Array indices matching the MotionState[]; z=0 for each polygon point
#    For further details: http://docs.ros.org/api/geometry_msgs/html/msg/Polygon.html
geometry_msgs/Polygon[] set_based_position_uncertainty
