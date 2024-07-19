#>sco:stage_data/stage_tables/end_gate
#@api
data modify storage _ _ set value []
data modify storage _ _ append value "paradise"
data modify storage sco:data stage_tables.end_gate set from storage _ _