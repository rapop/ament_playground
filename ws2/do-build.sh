INSTALL_DIR=${HOME}/test/ament_playground_ws2

colcon build --base-paths "${PWD}/src" \
            --install-base "${INSTALL_DIR}" \
            --merge-install
