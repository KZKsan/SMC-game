#>sco:stage_data/stage/blank_fortress/generate/reset
#@within 
forceload add -625 -304 -784 -225
kill @e[tag=sco-object,x=-784, y=-63, z=-304,dx=159,dy=63,dz=79]
function sco:stage_data/stage_object/set_match
fill -625 -48 -304 -784 -48 -225 light[level=15]
fill -625 -48 -304 -784 -48 -225 air
execute positioned -62 -51 48 rotated -90 0 run summon marker ^-4 ^ ^ {Tags:[sco_builder]}
fill -625 15 -225 -784 -48 -304 air
fill -625 -49 -225 -784 -49 -304 grass_block
fill -784 -50 -304 -625 -64 -225 dirt
execute positioned -768 -48 -304 run function sco:stage_data/stage/blank_fortress/generate/build/
