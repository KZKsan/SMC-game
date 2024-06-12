#>sco:process/domination/230/runtime_5
#@within sco:process/domination/230
tellraw @a[predicate=sco:team_join] [{"text": "対戦開始！","bold": true},{"text":"ショップ内のテレポーターからステージに移動できます。","bold": true}]
execute as @a[predicate=sco:team_join] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.5 1