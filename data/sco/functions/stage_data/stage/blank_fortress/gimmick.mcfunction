#>sco:stage_data/stage/blank_fortress/gimmick
#@within sco:stage_data/gimmick

execute as @e[type=block_display,tag=sco-object,tag=sco.stage_object.blank_fortress,tag=tnt] at @s unless block ~ ~ ~ barrier run scoreboard players add @s age 1
execute as @e[type=block_display,tag=sco-object,tag=sco.stage_object.blank_fortress,tag=tnt] at @s if block ~ ~ ~ barrier run scoreboard players set @s age 0
kill @e[type=block_display,tag=sco-object,tag=sco.stage_object.blank_fortress,tag=tnt,scores={age=160..}]