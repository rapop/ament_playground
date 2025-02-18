cmake_minimum_required(VERSION 3.5)
project(ament_env_hooks_ws2)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

find_package(ament_cmake REQUIRED)
find_package(ament_env_hooks REQUIRED)

ament_package()
