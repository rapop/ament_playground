INSTALL_DIR=${HOME}/test/ament_playground_ws

colcon build --event-handlers console_cohesion+ \
            --base-paths "${PWD}/src" \
            --install-base "${INSTALL_DIR}" \
            --merge-install \
            --cmake-args -DINSTALL_DIR="${INSTALL_DIR}"
