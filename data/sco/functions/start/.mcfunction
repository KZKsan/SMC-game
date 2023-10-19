#>sco:start/
#@public
execute if entity @p[predicate=sco:game_join] run function sco:start/set_score
execute unless entity @p[predicate=sco:game_join] run say Error