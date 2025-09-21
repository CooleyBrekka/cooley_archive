# update each child armor stand
# .2 to attempt to prevent weird data bugs TODO more testing for this
$data modify entity $(head) Pose.$(limb)[$(axis)] set value $(limb_pos).0f
$data modify entity $(feet) Pose.$(limb)[$(axis)] set value $(limb_pos).0f
$data modify entity $(hands) Pose.$(limb)[$(axis)] set value $(limb_pos).0f

