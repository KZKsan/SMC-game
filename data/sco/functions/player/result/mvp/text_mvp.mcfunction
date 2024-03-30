#>sco:player/result/mvp/text_mvp
#@within 
function sco:player/result/mvp/rank_make

playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 0.5

tellraw @a "----------------------------"
tellraw @a [{"text": "Most kills: ","color": "white"},{"selector":"@a[tag=mvp_kill]","color": "gold","bold": true},{"text": " キル数： ","color": "white"},{"score": {"name": "@p[tag=mvp_kill]","objective": "score_kill_count"},"color": "gold"}]
execute if entity @p[scores={score_hit_arrows=1..},predicate=sco:team_join,team=!spectator] run tellraw @a [{"text": "Most hits： ","color": "white"},{"selector":"@a[tag=mvp_hit_arrow]","bold": true,"color": "gold"},{"text": " 弓矢ヒット数： ","color": "white"},{"score": {"name": "@p[tag=mvp_hit_arrow]","objective": "score_hit_arrows"},"color": "gold"}]
execute unless entity @p[scores={score_hit_arrows=1..},predicate=sco:team_join,team=!spectator] run tellraw @a [{"text": "射撃の王者：","color": "gold"},{"text": " なし","color": "gold"}]
tellraw @a [{"text": "Most damage inflicted: ","color": "white"},{"selector":"@a[tag=mvp_damage]","bold": true,"color": "gold"},{"text": " ダメージ量： ","color": "white"},{"score": {"name": "@p[tag=mvp_damage]","objective": "score_damage_dealt"},"color": "gold"}]
tellraw @a "----------------------------"

execute if score #MVP_other result_mvp matches 1.. run tellraw @a [{"nbt":"mvp_result.text.name","storage":"sco:data","interpret": true},": ",{"selector":"@a[tag=mvp_damage]"}," (",{"nbt":"mvp_result.text.objective","storage":"sco:data","color": "gold","bold": false,"interpret": true},": ",{"score": {"name": "#MVP_other","objective": "result_mvp"}},{"text":")","color": "white"}]
execute unless score #MVP_other result_mvp matches 1.. run tellraw @a [{"nbt":"mvp_result.text.name","storage":"sco:data","interpret": true},{"text":": None.","color": "white"}]



tag @a remove mvp_kill
tag @a remove mvp_hit_arrow
tag @a remove mvp_damage
tag @a remove mvp_other
scoreboard players set #MVP_kill result_mvp 0
scoreboard players set #MVP_hit_arrow result_mvp 0
scoreboard players set #MVP_damage result_mvp 0
scoreboard players set #MVP_other result_mvp 0