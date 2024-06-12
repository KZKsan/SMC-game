#>sco:process/penalty_area/shop
#@within sco:process/**
execute if data storage sco:data penalty_area.input.flags.penalty{shop:1b} run tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.penalty_area.penalty] add rg.penalty_area.penalty
execute if data storage sco:data penalty_area.input.flags.death{shop:1b} run tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.penalty_area.death] add rg.penalty_area.death
execute unless data storage sco:data penalty_area.input.flags.penalty{shop:1b} run tag @a[predicate=sco:team_join,team=!spectator,tag=rg.penalty_area.penalty] remove rg.penalty_area.penalty
execute unless data storage sco:data penalty_area.input.flags.death{shop:1b} run tag @a[predicate=sco:team_join,team=!spectator,tag=rg.penalty_area.death] remove rg.penalty_area.death