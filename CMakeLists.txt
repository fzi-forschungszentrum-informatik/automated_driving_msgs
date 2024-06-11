#License: BSD
cmake_minimum_required(VERSION 3.5.1)
project(automated_driving_msgs)

find_package(ros_environment REQUIRED QUIET)
set(ROS_VERSION $ENV{ROS_VERSION})

if(${ROS_VERSION} EQUAL 2)

    find_package(ament_cmake REQUIRED)
    find_package(rosidl_default_generators REQUIRED)

    find_package(geometry_msgs REQUIRED)
    find_package(shape_msgs REQUIRED)
    find_package(std_msgs REQUIRED)

    ament_export_dependencies(
        geometry_msgs
        shape_msgs
        std_msgs
    )

    set(msg_files
        "msg/AdditionalHeaderForCommunication.msg"
        "msg/BasicSafetyMessage.msg"
        "msg/ClassWithProbability.msg"
        "msg/DeltaTrajectory.msg"
        "msg/MotionPrediction.msg"
        "msg/MotionState.msg"
        "msg/ObjectClassification.msg"
        "msg/ObjectState.msg"
        "msg/ObjectStateArray.msg"
        "msg/StampedFloat64.msg"
        "msg/Trajectory.msg"
    )

    rosidl_generate_interfaces(${PROJECT_NAME}
        ${msg_files}
        DEPENDENCIES
            geometry_msgs
            shape_msgs
            std_msgs
    )

    ament_package()

elseif(${ROS_VERSION} EQUAL 1)

    find_package(catkin REQUIRED COMPONENTS
        geometry_msgs
        message_generation
        shape_msgs
        std_msgs
    )

    add_message_files(
        DIRECTORY msg
        FILES
            "AdditionalHeaderForCommunication.msg"
            "BasicSafetyMessage.msg"
            "ClassWithProbability.msg"
            "DeltaTrajectory.msg"
            "MotionPrediction.msg"
            "MotionState.msg"
            "ObjectClassification.msg"
            "ObjectState.msg"
            "ObjectStateArray.msg"
            "StampedFloat64.msg"
            "Trajectory.msg"
    )

    generate_messages(DEPENDENCIES
        geometry_msgs
        shape_msgs
        std_msgs
    )

    catkin_package(CATKIN_DEPENDS
        geometry_msgs
        message_runtime
        shape_msgs
        std_msgs
    )

endif()
