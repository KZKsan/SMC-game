#>enderface:gui/processing/game_settings/announce/start_game
#@within enderface:gui/processing/game_settings/
execute as @a at @s run playsound block.note_block.chime record @s ~ ~ ~ 0.5 1
tellraw @a "----------------------------"
tellraw @a {"text": "まもなく開始します！","bold": true,"color": "aqua"}
tellraw @a {"text": "ロビー中央のエンダーチェストから参加しましょう！","bold": true,"color": "green"}
tellraw @a[team=] {"text": "!! 現在ゲームに参加していません !!","bold": true,"color": "dark_red"}
tellraw @a[team=mode.practice] {"text": "!! 訓練所にいる間は参加できません !!","bold": true,"color": "dark_red"}
tellraw @a "----------------------------"