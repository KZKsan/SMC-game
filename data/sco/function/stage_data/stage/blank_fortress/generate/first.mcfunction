#>sco:stage_data/stage/blank_fortress/generate/first
#@within 
kill @e[tag=sco_builder]
effect give @a[predicate=sco:team_join] blindness 3 0 true
execute positioned -62 -51 48 rotated -90 0 run function sco:stage_data/stage/blank_fortress/generate/setup