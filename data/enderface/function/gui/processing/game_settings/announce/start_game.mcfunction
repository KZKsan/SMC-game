#>enderface:gui/processing/game_settings/announce/start_game
#@within enderface:gui/processing/game_settings/
execute as @a at @s run playsound block.note_block.chime record @s ~ ~ ~ 0.5 1
tellraw @a "----------------------------"
tellraw @a {"text": "まもなく開始します！","bold": true,"color": "aqua"}
tellraw @a {"text": "ロビー中央のエンダーチェストから参加しましょう！","bold": true,"color": "green"}
tellraw @a[team=] {"text": "!! 現在ゲームに参加していません !!","bold": true,"color": "dark_red"}
tellraw @a[predicate=sco:practice_join] {"text": "!! 訓練所にいる間は参加できません !!","bold": true,"color": "dark_red"}
tellraw @s "----------------------------"
execute store result score # _ if entity @a[predicate=sco:game_join]
execute store result score #_ _ if entity @a[team=spectator]
execute store result score #__ _ if entity @a[predicate=!sco:game_join,team=!spectator]
execute store result score #___ _ if entity @a
tellraw @s [{"text": "参加中:","color": "gold"},{"score":{"name": "#", "objective": "_"},"bold": true,"color": "white"}," ",{"text": "観戦中:","color": "gray","bold": false},{"score":{"name": "#_", "objective": "_"},"bold": true,"color": "white"}," ",{"text": "未参加:","color": "dark_red","bold": false},{"score":{"name": "#__", "objective": "_"},"bold": true,"color": "white"}," ",{"text": "全体:","color": "white","bold": false},{"score":{"name": "#___", "objective": "_"},"bold": true,"color": "white"}]
tellraw @a "----------------------------"