#>sco:stage_data/stage/blank_fortress/generate/reset
#@within 
forceload add -625 -304 -784 -225
fill -625 15 -304 -784 15 -225 stone
fill -625 15 -304 -784 15 -225 air
execute positioned -763 -58 -287 rotated -90 0 run summon marker ^-4 ^ ^ {Tags:[sco_builder]}
fill -768 -32 -304 -641 13 -225 air
fill -768 -33 -304 -641 -33 -225 grass_block
fill -768 -34 -304 -641 -48 -225 dirt
execute positioned -768 -32 -304 run function sco:stage_data/stage/blank_fortress/generate/build/
