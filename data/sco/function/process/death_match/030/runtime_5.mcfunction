#>sco:process/death_match/030/runtime_5
#@within sco:process/death_match/030
tellraw @a[predicate=sco:team_join] [{"text": "対戦開始！","bold": true},{"score":{"name": "#m","objective": "timer"},"bold": true},{"text":"分後にサドンデスモードになります。","bold": true}]
execute as @a[predicate=sco:team_join] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.5 1