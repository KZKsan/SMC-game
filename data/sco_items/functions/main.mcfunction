#>sco_items:main
#@within tag/function tick
## スコアのセットアップは "sco_items:setup" へ
#declare function sco_items:setup

## ここにアイテムのコマンドを作っていく(進捗を使う場合も "sco_items:" で作る)

# magic_bullet
    execute as @e[type=potion,tag=!already,nbt={Item:{tag:{item_functions:{magic_bullet:1b}}}}] run function sco_items:item_functions/magic_bullet/

    execute as @e[type=area_effect_cloud,tag=!already,nbt={effects:[{id:"minecraft:glowing",amplifier:49b}]}] run function sco_items:item_functions/others/light_magic_bullet

# crows_sorrow
    execute as @a unless score @s crows_sorrow_count matches 0.. run scoreboard players set @s crows_sorrow_count 0
    execute as @a unless score @s crows_sorrow_cooldown matches 0.. run scoreboard players set @s crows_sorrow_cooldown 0
    scoreboard players set @a[scores={crows_sorrow_cooldown=1}] crows_sorrow_count 0
    scoreboard players remove @a[scores={crows_sorrow_cooldown=1..}] crows_sorrow_cooldown 1
    execute as @a[scores={crows_sorrow_cooldown=56..60}] at @s run function sco_items:item_functions/crows_sorrow/step/particle
    execute as @a[scores={crows_sorrow_cooldown=56}] run function sco_items:item_functions/crows_sorrow/step/slow
    tag @a[nbt={OnGround:1b},tag=crows_sorrow_step_jump] remove crows_sorrow_step_jump
    tag @a[scores={crows_sorrow_cooldown=36..58},nbt={OnGround:1b},tag=!crows_sorrow_step] add crows_sorrow_step
    tag @a[scores={crows_sorrow_cooldown=36..56},tag=!crows_sorrow_step] add crows_sorrow_step
    execute as @a[scores={crows_sorrow_cooldown=36..60},nbt={OnGround:0b},tag=crows_sorrow_step,tag=!crows_sorrow_step_jump] at @s unless block ~ ~-1 ~ #crows_sorrow/flying run function sco_items:item_functions/crows_sorrow/step/knockback
    execute as @a[scores={crows_sorrow_cooldown=36}] run function sco_items:item_functions/crows_sorrow/step/reset

# hidden_cover
    execute as @e[tag=hidden_cover] at @s run function sco_items:item_functions/hidden_cover/leaves/

# score
    execute as @a unless score @s lightning_hammer_holding_time matches -2147483648..2147483647 run scoreboard players set @s lightning_hammer_holding_time 0
    scoreboard players add @a[scores={lightning_hammer_holding_time=..-1}] lightning_hammer_holding_time 1