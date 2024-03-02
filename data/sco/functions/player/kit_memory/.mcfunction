#>sco:player/kit_memory/
#@public
# 互換性を切る処理
execute as @a[team=mode.practice] run teleport @s 344 -50 -135 0 0
clear @a[team=mode.practice]
execute as @a[team=mode.practice] run function sco_items:kit/default
data remove storage p-storage _[{}].data.save_kit[{}]
tellraw @a {"text": ">ショップが更新されたため、保存したKitはリセットされます。","color": "red"}