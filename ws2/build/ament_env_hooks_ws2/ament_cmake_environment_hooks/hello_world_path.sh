# ament_prepend_unique_value is a bash function that append env. vars. properly and does other stuff
# AMENT_CURRENT_PREFIX (seems to only be setup in the initial setup.bash file that is in the main install of ros (/opt/ros/humble/setup.bash))
# vs AMENT_PREFIX_PATH??
# or COLCON_PREFIX_PATH
# CMAKE_INSTALL_PREFIX isn't setup when using --merge-install
FAKE_AMENT_CURRENT_PREFIX=$(echo $COLCON_PREFIX_PATH | cut -d':' -f1)
ament_prepend_unique_value HELLO_WORLD_PATH "$FAKE_AMENT_CURRENT_PREFIX/lib/hello"
