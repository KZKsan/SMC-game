#>sco:process/death_match/031/runtime_5
#@within sco:process/death_match/031
tellraw @a[predicate=sco:team_join] {"text": "サドンデスモード開始！","bold": true}
execute as @a[predicate=sco:team_join] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.5 1
