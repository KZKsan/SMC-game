#>sco_items:main
#@within tag/function tick
## スコアのセットアップは "sco_items:setup" へ
#declare function sco_items:setup

## ここにアイテムのコマンドを作っていく(進捗を使う場合も "sco_items:" で作る)

# arrow
    execute as @e[type=#arrows,nbt={item:{tag:{item_functions:{no_gravity_arrow:1b}}}},tag=!item_function.no_gravity_arrow] run function sco_items:item_functions/no_gravity_arrow/set_data
    execute as @e[type=#arrows,nbt={item:{tag:{item_functions:{no_gravity_arrow:1b}}}},tag=item_function.no_gravity_arrow] at @s run function sco_items:item_functions/no_gravity_arrow/
    execute as @e[type=#arrows,nbt={item:{tag:{item_functions:{no_gravity_arrow:1b}}},inGround:1b}] at @s run function sco_items:item_functions/no_gravity_arrow/hit_block
    execute as @e[type=#arrows,nbt={item:{tag:{item_functions:{small_arrow:1b}}}},tag=!item_function.small_arrow] run function sco_items:item_functions/small_arrow/set_data
    execute as @e[type=#arrows,tag=!item_function.piercing_arrow] if data entity @s item.components."minecraft:enchantments".levels."minecraft:piercing" run function sco_items:item_functions/enchant/piercing/set_nbt
# magic_bullet
    execute as @e[type=potion,tag=!already] if data entity @s Item.components."minecraft:custom_data".item_functions.set_p_vector run function #sco_items:item_functions/set_p_vector/generic

    execute as @e[type=area_effect_cloud,tag=!already,nbt={effects:[{id:"minecraft:glowing",amplifier:49b}]}] run function sco_items:item_functions/others/magic_bullet_of_light
    execute as @e[type=potion,nbt={Item:{tag:{item_functions:{mini_healing_potion:1b}}}}] positioned as @s run function sco_items:item_functions/others/mini_healing_potion

# custom_effect

    execute as @e[nbt={active_effects:[{id:"minecraft:unluck",amplifier:49b}]}] run function sco_items:item_functions/no_gravity_arrow/hit_entity
    execute as @e[nbt={active_effects:[{id:"minecraft:unluck",amplifier:119b},{id:"minecraft:absorption",amplifier:9b}]}] run effect clear @s absorption

    ##不幸の効果はここで消去する    
    effect clear @e[nbt={active_effects:[{id:"minecraft:unluck"}]}] unluck

# crows_sorrow
    execute as @a unless score @s crows_sorrow_count matches 0.. run scoreboard players set @s crows_sorrow_count 0
    execute as @a unless score @s crows_sorrow_cooldown matches 0.. run scoreboard players set @s crows_sorrow_cooldown 0
    scoreboard players set @a[scores={crows_sorrow_cooldown=1}] crows_sorrow_count 0
    scoreboard players remove @a[scores={crows_sorrow_cooldown=1..}] crows_sorrow_cooldown 1
    execute as @a[scores={crows_sorrow_cooldown=96..100}] at @s run function sco_items:item_functions/crows_sorrow/step/particle
    execute as @a[scores={crows_sorrow_cooldown=96}] run function sco_items:item_functions/crows_sorrow/step/slow
    execute as @a[scores={crows_sorrow_cooldown=76}] run function sco_items:item_functions/crows_sorrow/step/reset

# hidden_cover
    execute as @e[tag=hidden_cover] at @s run function sco_items:item_functions/hidden_cover/leaves/

# breeake_shield
    execute as @a[scores={breake_shield_hit=1..},nbt={SelectedItem:{tag:{item_functions:{breake_shield:1b}}}}] run effect give @s speed 1 1
    execute as @a[scores={breake_shield_hit=1..},nbt={SelectedItem:{tag:{item_functions:{breake_shield:1b}}}}] run effect give @s strength 3 0
    execute as @a[scores={breake_shield_hit=1..},nbt={Inventory:[{Slot:-106b,tag:{item_functions:{breake_shield:1b}}}]}] run effect give @s speed 1 1
    execute as @a[scores={breake_shield_hit=1..},nbt={Inventory:[{Slot:-106b,tag:{item_functions:{breake_shield:1b}}}]}] run effect give @s strength 3 0
    scoreboard players set @a breake_shield_hit 0

# score
    ##lightning_hammer
    execute as @a unless score @s lightning_hammer_holding_time matches -2147483648..2147483647 run scoreboard players set @s lightning_hammer_holding_time 0
    scoreboard players add @a[scores={lightning_hammer_holding_time=..-1}] lightning_hammer_holding_time 1
    execute as @a[scores={lightning_hammer_holding_time=..-1}] run function sco_items:item_functions/lightning_hammer/actionbar/flag
    ##corpse_daemon
    execute as @a[scores={corpse_daemon.cooldown=1..}] run function sco_items:item_functions/corpse_daemon/cooldown/

#actionbar
    execute as @a[tag=item_actionbar.end_flag,tag=!item_actionbar] run function sco_items:actionbar/end
    execute as @a[tag=item_actionbar] run function sco_items:actionbar/

# cure_arrow
    scoreboard players remove @a[scores={cure_arrow=1..}] cure_arrow 1
    scoreboard players reset @a[scores={cure_arrow=..0}] cure_arrow
    execute as @a[scores={cure_arrow=0..},gamemode=!spectator] run effect clear