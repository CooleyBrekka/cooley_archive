# armor-stand-scripting
Welcome to Cooley's Robust Armor Stand Scripting!
This datapack and optional resource pack are designed to streamline the process of creating humanoid bosses and NPCs (actors).

### Features

- Keyframe driven armor stand animations
- Simple creation and deletion process
- Unlimited timelines per actor for independent limb animations
- Custom interpolation curves per keyframe
- Finite state machine support for complex movesets and scripting
- Optional resource pack that adds custom hand models to simulate real players

### How to Use

Note: Files in the `public/` folder are currently a sample scripted enemy implementation. Feel free to remove or change those files.

##### Creating and Deleting Actors
```mcfunction
data modify storage cooley:statue root merge value {Rotation:[0.0f,0.0f],position:"0.5 -60.0 0.5",clothes:"player_head_leather_armor",hands:2,pose:"default_gravity"}
function cooley:interface/create_statue
```
    function cooley:public/sample/populate_walking with storage cooley:statue root.new
