cmake_minimum_required(VERSION 3.5)
project(ament_index_resources_ws2)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

find_package(ament_cmake REQUIRED)
find_package(ament_index_resources REQUIRED)

ament_index_has_resource(has_resource "my_resource" "ament_index_resources")
if(has_resource)
  message("found resource!")
  # ament_index_get_resource(<var> <resource_name> <package_name>)
  ament_index_get_resource(my_resource "my_resource" "ament_index_resources")
  message("resource is ${my_resource}")
  install(
    FILES ${my_resource}
    DESTINATION scripts/${PROJECT_NAME}
  )
else()
  message(FATAL_ERROR "no resource called my_resource found in ament_index_resources")
endif()
ament_package()
