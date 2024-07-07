#>sco:process/escalation/430/runtime_5
#@within sco:process/escalation/430
tellraw @a[predicate=sco:team_join] {"text": "サドンデスモード開始！","bold": true}
execute as @a[predicate=sco:team_join] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.5 1
