#>sco:player/result/mvp/text_mvp
#@within

# math 
    function sco:player/result/mvp/rank_make
# sound
    execute as @a[predicate=sco:team_join] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.5
# ---
    tellraw @a[predicate=sco:team_join] "----------------------------"
# kill
    tellraw @a[predicate=sco:team_join] [{"text": "Most kills: ","color": "white"},{"selector":"@a[tag=mvp_kill]","bold": true},{"text": " キル数： ","color": "white"},{"score": {"name": "@p[tag=mvp_kill]","objective": "score_kill_count"},"color": "gold"}]
# arrow
    execute if entity @p[scores={score_hit_arrows=1..},predicate=sco:team_join,team=!spectator] run tellraw @a [{"text": "Most hits： ","color": "white"},{"selector":"@a[tag=mvp_hit_arrow]","bold": true},{"text": " 弓矢ヒット数： ","color": "white"},{"score": {"name": "@p[tag=mvp_hit_arrow]","objective": "score_hit_arrows"},"color": "gold"}]
    execute unless entity @p[scores={score_hit_arrows=1..},predicate=sco:team_join,team=!spectator] run tellraw @a [{"text": "Most hits","color": "white"},{"text": " なし","color": "gold"}]
# damage
    tellraw @a[predicate=sco:team_join] [{"text": "Most damage inflicted: ","color": "white"},{"selector":"@a[tag=mvp_damage]","bold": true},{"text": " ダメージ量： ","color": "white"},{"score": {"name": "#MVP_damage_1","objective": "result_mvp"},"color": "gold"},{"text": ".","color": "gold"},{"score": {"name": "#MVP_damage_0.1","objective": "result_mvp"},"color": "gold"}]
# ---
    tellraw @a[predicate=sco:team_join] "----------------------------"
# other
    # flort score
    execute if score #MVP_other result_mvp matches 1.. if data storage sco:data mvp_result{flort:true} run tellraw @a[predicate=sco:team_join] [{"nbt":"mvp_result.text.name","storage":"sco:data","interpret": true},": ",{"selector":"@a[tag=mvp_other]"}," (",{"nbt":"mvp_result.text.objective","storage":"sco:data","color": "gold","bold": false,"interpret": true},": ",{"score": {"name": "#MVP_other_1","objective": "result_mvp"}},".",{"score": {"name": "#MVP_other_0.1","objective": "result_mvp"}},{"text":")","color": "white"}]
    # int score
    execute if score #MVP_other result_mvp matches 1.. if data storage sco:data mvp_result{flort:false} run tellraw @a[predicate=sco:team_join] [{"nbt":"mvp_result.text.name","storage":"sco:data","interpret": true},": ",{"selector":"@a[tag=mvp_other]"}," (",{"nbt":"mvp_result.text.objective","storage":"sco:data","color": "gold","bold": false,"interpret": true},": ",{"score": {"name": "#MVP_other","objective": "result_mvp"}},{"text":")","color": "white"}]
    # none
    execute unless score #MVP_other result_mvp matches 1.. run tellraw @a[predicate=sco:team_join] [{"nbt":"mvp_result.text.name","storage":"sco:data","interpret": true},{"text":": None.","color": "white"}]
# ---
    tellraw @a[predicate=sco:team_join] "----------------------------"
# reset
    # tags
    tag @a remove mvp_kill
    tag @a remove mvp_hit_arrow
    tag @a remove mvp_damage
    tag @a remove mvp_other
    # scores
    scoreboard players set #MVP_kill result_mvp 0
    scoreboard players set #MVP_hit_arrow result_mvp 0
    scoreboard players set #MVP_damage result_mvp 0
    scoreboard players set #MVP_damage_1 result_mvp 0
    scoreboard players set #MVP_damage_0.1 result_mvp 0
    scoreboard players set #MVP_other result_mvp 0
    scoreboard players set #MVP_other_1 result_mvp 0
    scoreboard players set #MVP_other_0.1 result_mvp 0