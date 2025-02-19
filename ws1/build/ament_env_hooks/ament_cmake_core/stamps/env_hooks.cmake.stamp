# this file is for including this cmake functions into pkgs that includes it with find_package().

# find the HOOK_PATH from the original pkg where HOOK_PATH has been set even when this .cmake file is being called from other pkgs
# (with a different AMENT_CURRENT_PREFIX for example)
ament_index_get_resource(HOOK_PATH "env_hooks" "ament_env_hooks")
if(NOT HOOK_PATH)
    message(FATAL_ERROR "Failed to find env_hooks for ament_env_hooks")
endif()

ament_environment_hooks(${HOOK_PATH}/hello_world_path.sh.in)
