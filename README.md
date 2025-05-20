# armor-stand-scripting
Welcome to Cooley's Robust Armor Stand Scripting!
This datapack and optional resource pack are designed to streamline the process of creating humanoid bosses and NPCs (actors).

TODO: no grav attribute for actors, default for nograv, defaults for limb payloads

## Dependencies and Tools
```diff
- Using gu is required for this datapack to work! Get gu here: 
```
https://github.com/gibbsly/gu (thanks gibbs!)

This website is very handy for generating armor stand poses: https://haselkern.com/Minecraft-ArmorStand/ (thanks Lars!)

## Features

- Keyframe driven armor stand animations
- Simple creation and deletion process
- Unlimited timelines per actor for independent limb animations
- Custom interpolation curves per keyframe
- Finite state machine support for complex movesets and scripting
- Optional resource pack that adds custom hand models to simulate real players

## How to Use

Note: Files in the `public/` folder are currently a sample scripted enemy implementation. Feel free to remove or change those files, or reference them while learning about the system. I know that this is a staggering wall of text, and I'm working on making it better.

#### Creating and Deleting Actors

Use this syntax to merge information about the actor into storage. The default values for actors are shown in the command below.
```mcfunction
data modify storage cooley:statue root merge value {Rotation:[0.0f,0.0f],position:"0.5 -60.0 0.5",clothes:"player_head_leather_armor",hands:1,pose:"default"}
```
- clothes - the actor will run `function cooley:public/clothes/outfits/<clothes>` as itself. This function intended to be designed by the user and should contain `/item` commands that equip the actor. Do not perform calculations here since this command runs an undefined number of times (three, but that's not guaranteed.) See Misc for information on retrieving a player head.
- hands - if using the optional resource pack, this is the type of custom hand texture the actor uses. See Misc for information on modifying the resource pack.
- pose - the actor will run `function cooley:animation/statue/pose/<pose>` as itself. There are multiple pre-made starting poses, but additional ones may be added. Again, this command runs an undefined number of times.

Once the actor information is merged, request an actor using this function.
```mcfunction
function cooley:interface/create_statue
```
After running the create request, the actor's UUID is stored in `cooley:statue root.new.marker`. Consider storing this UUID, since this is the entity that you will add keyframes to.
(Below is one way to store the UUID. Consider using a `.uuid` extension on your storage path to make deleting the actor easier.)
```mcfunction
data modify storage cooley:sample root.uuid set from storage cooley:statue root.new.marker
```

When done with the actor, delete them using the uuid despawn function.
```mcfunction
function cooley:interface/despawn_uuid with storage cooley:sample root
```
Again, if you stored the UUID in `cooley:sample root.uuid`, make sure to only pass in `cooley:sample root` so that `uuid` can be a macro argument.

#### Keyframes and Timelines

To animate your actors, you will need to add keyframes to their timelines. This is done using storage payloads.
Let's say we want the actor to raise their left arm (like winding up an attack).

This command will create the base for our payload. It contains some metadata about the keyframe itself.
```mcfunction
data modify storage cooley:sample root.payload set value {time:8,fsm:"none",lerp:"icbrt"}
```
- time - how long the animation lasts. `-1` means that this action doesn't end until another action is added to the timeline after it. (For example, an idle state that eventually adds a non-idle action.) Note that actual limb animations should use positive time values and interrupt themselves if they need to exit early. `-1` by default.
- fsm - the finite state machine that's attached to this animation. See Finite State Machines for information on scripting. `"none"` by default.
- lerp - the interpolation algorithm used to smooth out the animation. See Misc for a list. `"linear"` by default.

This command will add a limb to our payload. The name of the limb must exactly match one of the limbs in Pose.
```mcfunction
data modify storage cooley:sample root.payload.LeftArm set value {values:[0f,-78f,-70f],type:"absolute"}
```
- values - the rotation components that limbs use. 
- type - `"absolute"` or `"relative"`. absolute means that the values are the final rotation of the limb, relative means that the values are added to current rotation to determine final rotation.
No defaults for these yet.

This command will add the payload to the timeline.
```mcfunction
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:2}
```
- storage - the location of the payload
- timeline - the timeline to append to. limb positions applied by timelines added later will override limb positions applied by timelines that are added earlier, **regardless of the timeline id**.

#### Finite State Machines



#### Misc





