#>sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/friendlyfire_off
#@within sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/

#>
#@private
#alias entity power_bullet_ammo @e[type=marker,tag=blank_fortress,tag=power_bullet_ammo,tag=hit_player,scores={stage_object.count.0=}]


tag @e[type=marker,tag=blank_fortress,tag=power_bullet_ammo,tag=hit_player,scores={stage_object.count.0=7..},nbt={data:{team:"red"}}] add power_bullet_ammo.hit_red
tag @e[type=marker,tag=blank_fortress,tag=power_bullet_ammo,tag=hit_player,scores={stage_object.count.0=7..},nbt={data:{team:"blue"}}] add power_bullet_ammo.hit_blue



function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:0}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:1}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:2}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:3}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:4}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:5}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:6}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:7}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:8}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:9}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:10}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:11}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:12}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:13}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:14}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:15}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:16}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:18}
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/pos/frindlyfire_off {pos:19}


tag @e[type=marker,tag=power_bullet_ammo.hit_red] remove power_bullet_ammo.hit_red
tag @e[type=marker,tag=power_bullet_ammo.hit_blue] remove power_bullet_ammo.hit_blue
tag @e[type=marker,tag=blank_fortress,tag=power_bullet_ammo,tag=hit_player] remove hit_player