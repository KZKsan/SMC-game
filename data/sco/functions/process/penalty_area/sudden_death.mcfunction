#>sco:process/penalty_area/sudden_death
#@within sco:process/**
execute if data storage sco:data penalty_area.input.penalty.sudden_death run tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.penalty_area.penalty] add rg.penalty_area.penalty
execute if data storage sco:data penalty_area.input.death.sudden_death run tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.penalty_area.death] add rg.penalty_area.death
execute unless data storage sco:data penalty_area.input.penalty.sudden_death run tag @a[predicate=sco:team_join,team=!spectator,tag=rg.penalty_area.penalty] remove rg.penalty_area.penalty
execute unless data storage sco:data penalty_area.input.death.sudden_death run tag @a[predicate=sco:team_join,team=!spectator,tag=rg.penalty_area.death] remove rg.penalty_area.death