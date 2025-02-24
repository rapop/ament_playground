# some ex:
# https://github.com/mkjaergaard/genmsg/blob/41a1f682c32c6ee2527d1641c83b808d1a6a85b3/src/genmsg/template_tools.py#L198
cmake_minimum_required(VERSION 3.5)
project(custom_command)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

find_package(ament_cmake REQUIRED)

set(resource_file_name "myfile.txt")
set(resource_file_path "${CMAKE_CURRENT_SOURCE_DIR}/resource")
set(PYTHON_EXECUTABLE "/usr/bin/python3")

if (INSTALL_DIR)
  set(OUTPUT_DIR ${INSTALL_DIR})
else()
  message(FATAL_ERROR "Install directory variable is not setup.")
endif()


# setup A
set (myoutput "${CMAKE_CURRENT_SOURCE_DIR}/resource/out.txt")

add_custom_target(run_script ALL
    DEPENDS ${myoutput}
    COMMENT "Ensuring Python script is executed."
)

# add_custom_command does not create a new target. You have to define targets explicitly
# by add_executable, add_library or add_custom_target in order to make them visible to make
add_custom_command(
    DEPENDS
      resource/myfile.txt
    COMMAND
      ${PYTHON_EXECUTABLE}
      "${CMAKE_CURRENT_SOURCE_DIR}/scripts/run.py"
      "-r"
      "${resource_file_path}/${resource_file_name}"
    COMMENT "Running python script."
    OUTPUT ${myoutput}
    VERBATIM
)

# end setup A

# setup B
# this also works
# add_custom_target(always_run_target ALL
#     DEPENDS
#       resource/myfile.txt
#     COMMAND
#       ${PYTHON_EXECUTABLE}
#       "${CMAKE_CURRENT_SOURCE_DIR}/scripts/run.py"
#       "-r"
#       "${resource_file_path}/${resource_file_name}"
#     COMMENT "Running python script."
#     OUTPUT myoutput
#     VERBATIM
# )

# end setup B


# setup C

# add_executable(myexec
#   src/main.cpp
# )

# add_custom_command(
#     TARGET myexec
#     PRE_BUILD
#     COMMAND
#       ${PYTHON_EXECUTABLE}
#       "${CMAKE_CURRENT_SOURCE_DIR}/scripts/run.py"
#       "-r"
#       "${resource_file_path}/${resource_file_name}"
#     COMMENT "Running python script."
#     VERBATIM
# )

# end setup C
