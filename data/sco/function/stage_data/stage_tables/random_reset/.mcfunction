#>sco:stage_data/stage_tables/random_reset/
#@within sco:setup
execute store success score # _ run data modify storage sco:data stage_tables.memory.death_match set from storage sco:data stage_tables.death_match
execute if score # _ matches 1 if data storage sco:config game{rule:"death_match"} run data modify storage sco:data stage_tables.random set value [] 
execute store success score # _ run data modify storage sco:data stage_tables.memory.kick_out set from storage sco:data stage_tables.kick_out
execute if score # _ matches 1 if data storage sco:config game{rule:"kick_out"} run data modify storage sco:data stage_tables.random set value [] 
execute store success score # _ run data modify storage sco:data stage_tables.memory.domination set from storage sco:data stage_tables.domination
execute if score # _ matches 1 if data storage sco:config game{rule:"domination"} run data modify storage sco:data stage_tables.random set value [] 
execute store success score # _ run data modify storage sco:data stage_tables.memory.end_gate set from storage sco:data stage_tables.end_gate
execute if score # _ matches 1 if data storage sco:config game{rule:"end_gate"} run data modify storage sco:data stage_tables.random set value [] 
execute store success score # _ run data modify storage sco:data stage_tables.memory.escalation set from storage sco:data stage_tables.escalation
execute if score # _ matches 1 if data storage sco:config game{rule:"escalation"} run data modify storage sco:data stage_tables.random set value [] 
