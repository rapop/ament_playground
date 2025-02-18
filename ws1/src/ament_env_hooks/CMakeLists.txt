cmake_minimum_required(VERSION 3.5)
project(ament_env_hooks)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

find_package(ament_cmake REQUIRED)

install(
  DIRECTORY cmake
  DESTINATION share/${PROJECT_NAME}
)

install(
  DIRECTORY env_hooks
  DESTINATION share/${PROJECT_NAME}
)

# Register the resource name env_hooks to point to the folder in this package so we dont need to copy the
# scripts that are in the env_hooks folder in other packages.
ament_index_register_resource("env_hooks" CONTENT "${CMAKE_CURRENT_SOURCE_DIR}/env_hooks")

ament_export_dependencies(
  ament_cmake
)

# the env_hooks.cmake file is not run in this pkg, it is included when including this pkg with find_package() inside other pkgs...
ament_package(
  # CONFIG_EXTRAS is expanded by configure_file().
  # It can also be given cmake.in template files.
  # Used for extending ament also (means we provide additional macros to other packages.)
  # configure_file() simply copies file from one location and modify its content.
  # ex. configure_file(foo.h.in foo.h @ONLY)
  CONFIG_EXTRAS
    cmake/env_hooks.cmake
)
