#>sco:player/result/mvp/text_mvp
#@within 
function sco:player/result/mvp/rank_make

playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 0.5

tellraw @a [{"text": "殺戮の王者：","color": "gold","bold": true},{"selector":"@a[tag=mvp_kill]","bold": true,"color": "aqua"},{"text": "　キル数：","color": "gold"},{"score": {"name": "@p[tag=mvp_kill]","objective": "score_kill_count"},"color": "aqua"}]
execute if entity @p[scores={score_hit_arrows=1..},predicate=sco:team_join,team=!spectator] run tellraw @a [{"text": "射撃の王者：","color": "gold","bold": true},{"selector":"@a[tag=mvp_hit_arrow]","bold": true,"color": "aqua"},{"text": "　弓矢ヒット数：","color": "gold"},{"score": {"name": "@p[tag=mvp_hit_arrow]","objective": "score_hit_arrows"},"color": "aqua"}]
execute unless entity @p[scores={score_hit_arrows=1..},predicate=sco:team_join,team=!spectator] run tellraw @a [{"text": "射撃の王者：","color": "gold","bold": true}," なし"]
tellraw @a [{"text": "損傷の王者：","color": "gold","bold": true},{"selector":"@a[tag=mvp_damage]","bold": true,"color": "aqua"},{"text": "　ダメージ量：","color": "gold"},{"score": {"name": "@p[tag=mvp_damage]","objective": "score_damage_dealt"},"color": "aqua"}]

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