#>enderface:gui/processing/game_settings/announce/settings
#@within enderface:gui/processing/game_settings/
execute as @a at @s run playsound item.book.page_turn record @s ~ ~ ~ 1 1
tellraw @a "----------------------------"
execute if data storage sco:config game{rule:"death_match"} run tellraw @a [{"text": "ルール: ","bold": true},{"text": "デスマッチ","bold": true,"color": "red"}]
execute if data storage sco:config {stage:"sco_random"} run tellraw @a [{"text": "ステージ: ","bold": true},{"text": "ランダム","color": "green"}]
execute unless data storage sco:config {stage:"sco_random"} run function sco:stage_data/data_fetch with storage sco:config
execute unless data storage sco:config {stage:"sco_random"} run tellraw @a [{"text": "ステージ: ","bold": true},{"nbt":"stage_name","storage": "sco:input","interpret": true}]
tellraw @a [{"text": "その他: ","bold": true}]
execute if data storage sco:config game{show_hp:false} run tellraw @a [{"text": "・HPの表示: "},{"text": "OFF","color": "gray"}]
execute if data storage sco:config game{show_hp:true} run tellraw @a [{"text": "・HPの表示: "},{"text": "ON","color": "green"}]
execute if data storage sco:config game{show_enemy_team_name:false} run tellraw @a [{"text": "・敵チームの名前の表示: "},{"text": "OFF","color": "gray"}]
execute if data storage sco:config game{show_enemy_team_name:true} run tellraw @a [{"text": "・敵チームの名前の表示: "},{"text": "ON","color": "green"}]
execute if data storage sco:config game{friendlyfire:false} run tellraw @a [{"text": "・フレンドリーファイア: "},{"text": "OFF","color": "gray"}]
execute if data storage sco:config game{friendlyfire:true} run tellraw @a [{"text": "・フレンドリーファイア: "},{"text": "ON","color": "green"}]
execute if data storage sco:config game{friendlyfire:false} run tellraw @a [{"text": "・矢の回収: "},{"text": "OFF","color": "gray"}]
execute if data storage sco:config game{friendlyfire:true} run tellraw @a [{"text": "・矢の回収: "},{"text": "ON","color": "green"}]
tellraw @a "----------------------------"