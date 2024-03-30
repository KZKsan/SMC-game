#>sco:player/kit_memory/
#@public
# 互換性を切る処理
execute as @a[team=mode.pvp] run function sco:player/kit_memory/pvp
execute as @a[predicate=sco:practice_join] run teleport @s 344 -50 -135 0 0
clear @a[predicate=sco:practice_join]
execute as @a[predicate=sco:practice_join] run function sco_items:kit/default
team join mode.practice @a[predicate=sco:practice_join]
data remove storage p-storage _[{}].data.save_kit[{}]
tellraw @a {"text": ">ショップが更新されたため、保存したKitはリセットされます。","color": "red"}