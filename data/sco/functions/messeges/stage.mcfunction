#>sco:messeges/stage
#@api
tellraw @a[predicate=sco:team_join] "----------------------------------------------------"
tellraw @a[predicate=sco:team_join] [{"text": "ステージ: ","bold": true},{"nbt":"stage_name","storage": "sco:data","interpret": true}]
tellraw @a[predicate=sco:team_join] ""
tellraw @a[predicate=sco:team_join] [{"nbt":"stage_description","storage": "sco:data","interpret": true}]
tellraw @a[predicate=sco:team_join] "----------------------------------------------------"


tellraw @a[predicate=sco:team_join] {"text": "ステージ下見時間です。","color": "gold","bold": true}
