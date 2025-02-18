cmake_minimum_required(VERSION 3.5)
project(ament_index_resources)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

find_package(ament_cmake REQUIRED)

# CONTENT determines the content that will be written in the content file at
# <install_prefix>/share/ament_index/resource_index/<resource_name>/<package_name>
# its just a string that will be stored
# it can be a file_path, a config value, a list of directories
# the content will be retrieved later by other pkgs with
# ament_index_get_resource(<var> <resource_name> <package_name>)
ament_index_register_resource("my_resource" CONTENT "${CMAKE_CURRENT_SOURCE_DIR}/resources/script.sh")
ament_package()
