#>sco:regine/block_area/
#@api
$execute if entity @s[predicate=sco:regine/block_area/scores] $(block_area)run function sco:regine/block_area/out
$execute $(updata_area)run tag @s add rg.block_area.out