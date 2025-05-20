# get the old pose from one of the child armor stands
$data modify storage cooley:statue root.$(uuid).timeline_$(id)_object.old_pose set from entity $(head_uuid) Pose

# request calculations for each limb
$function cooley:animation/timeline/process/get_limb {limb:"Body",uuid:"$(uuid)",id:"$(id)"}
$function cooley:animation/timeline/process/get_limb {limb:"Head",uuid:"$(uuid)",id:"$(id)"}
$function cooley:animation/timeline/process/get_limb {limb:"RightLeg",uuid:"$(uuid)",id:"$(id)"}
$function cooley:animation/timeline/process/get_limb {limb:"LeftLeg",uuid:"$(uuid)",id:"$(id)"}
$function cooley:animation/timeline/process/get_limb {limb:"RightArm",uuid:"$(uuid)",id:"$(id)"}
$function cooley:animation/timeline/process/get_limb {limb:"LeftArm",uuid:"$(uuid)",id:"$(id)"}



