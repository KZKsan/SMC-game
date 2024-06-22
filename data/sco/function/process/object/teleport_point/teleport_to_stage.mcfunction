#>sco:process/object/teleport_point/teleport_to_stage
#@within sco:process/object/teleport_point/
execute if entity @s[team=red] run function sco:tp/respawn/save {name:"stage_red"}
execute if entity @s[team=blue] run function sco:tp/respawn/save {name:"stage_blue"}
function sco:tp/respawn/
effect give @s instant_health 160 100
effect give @s absorption 8 9
execute if score #domination.assist_flag game matches 1 if entity @s[team=red] run function sco:process/object/teleport_point/assist/domination
execute if score #domination.assist_flag game matches -1 if entity @s[team=blue] run function sco:process/object/teleport_point/assist/domination
tag @s remove rg.item_function_limit
tag @s remove rg.shot_projectiles
tag @s remove rg.barrier_effects
tag @s add rg.penalty_respawn
function sco:player/respawn/penalty/reset_score
function sco:player/save_respawn_item
