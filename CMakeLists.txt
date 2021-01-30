#License: BSD
cmake_minimum_required(VERSION 3.5.1)
project(automated_driving_msgs)

find_package(catkin REQUIRED COMPONENTS geometry_msgs message_generation std_msgs shape_msgs)

add_message_files(
  DIRECTORY msg
  FILES
  AdditionalHeaderForCommunication.msg
  BasicSafetyMessage.msg
  ClassWithProbability.msg
  DeltaPoseWithDeltaTime.msg
  DeltaTrajectory.msg
  MotionPrediction.msg
  MotionState.msg
  ObjectClassification.msg
  ObjectState.msg
  ObjectStateArray.msg
  StampedFloat64.msg
  Trajectory.msg)

generate_messages(DEPENDENCIES geometry_msgs std_msgs shape_msgs)

catkin_package(CATKIN_DEPENDS geometry_msgs message_runtime std_msgs shape_msgs)
