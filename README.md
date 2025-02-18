# ament_playground

## ament_env_hooks

`cd ws1 && ./do-build.sh`
`source /home/radu/test/ament_playground_ws/setup.bash`

This will build the pkg containing the hook and make it available to other pkgs when calling `find_package()`

`echo $HELLO_WORLD_PATH` will still not print anything


`cd ws2 && ./do-build.sh`
`source /home/radu/test/ament_playground_ws2/setup.bash`

`echo $HELLO_WORLD_PATH` will result into the following
`/opt/ros/humble/lib/hello`
