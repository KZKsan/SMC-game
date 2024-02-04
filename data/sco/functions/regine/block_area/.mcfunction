#>sco:regine/block_area/
#@api
$execute if entity @s[predicate=sco:regine/block_area/scores] $(struct)run function sco:regine/block_area/out
$execute $(struct)run tag @s add rg.block_area.out