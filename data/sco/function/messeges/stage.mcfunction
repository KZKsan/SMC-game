#>sco:messeges/stage
#@api
tellraw @a[predicate=sco:team_join] "----------------------------------------------------"

execute if data storage sco:config game{rule:"death_match"} run tellraw @a[predicate=sco:team_join] [{"text": "ルール: ","bold": true},{"text": "デスマッチ","bold": true,"color": "red"}]
execute if data storage sco:config game{rule:"kick_out"} run tellraw @a[predicate=sco:team_join] [{"text": "ルール: ","bold": true},{"text": "キックアウト","bold": true,"color": "yellow"}]
execute if data storage sco:config game{rule:"domination"} run tellraw @a[predicate=sco:team_join] [{"text": "ルール: ","bold": true},{"text": "ドミネーション","bold": true,"color": "dark_purple"}]
tellraw @a[predicate=sco:team_join] ""
tellraw @a[predicate=sco:team_join] [{"text": "ステージ: ","bold": true},{"nbt":"stage_name","storage": "sco:data","interpret": true}]
tellraw @a[predicate=sco:team_join] ""
tellraw @a[predicate=sco:team_join] [{"nbt":"stage_description","storage": "sco:data","interpret": true}]
tellraw @a[predicate=sco:team_join] "----------------------------------------------------"


tellraw @a[predicate=sco:team_join] {"text": "ステージ下見時間です。","color": "gold","bold": true}
