INSTALL_DIR=${HOME}/test/ament_playground_ws

colcon build --base-paths "${PWD}/src" \
            --install-base "${INSTALL_DIR}" \
            --merge-install
