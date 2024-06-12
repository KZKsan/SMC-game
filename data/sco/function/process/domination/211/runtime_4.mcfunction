#>sco:process/domination/211/runtime_4
#@within sco:process/domination/211
function sco:stage_data/stage_object/
execute if data storage sco:data options{gimmick:true} run function sco:stage_data/gimmick
#ドミネーション用のオブジェクト
execute as @e[type=item_display,tag=beacon.core,tag=load_pos] run function sco:process/domination/object/beacon/set/load_pos with entity @s item.components."minecraft:custom_data"
