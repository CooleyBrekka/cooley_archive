# attach player to the camera
$spectate $(camera_temp) @s

# teleport the camera to a topdown angle
$execute if score #spec_cam_delay co_math matches 100.. as $(actor_temp) at @s rotated as @s rotated ~ 0 positioned $(camera_offset) facing entity $(actor_temp) feet run tp $(camera_temp) ~ ~ ~ ~ ~

