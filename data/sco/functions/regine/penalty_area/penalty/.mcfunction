#>sco:regine/penalty_area/penalty/
#@public
$tag @s[x=$(x),y=$(y),z=$(z),dx=$(dx),dy=$(dy),dz=$(dz)] remove rg.penalty_area.penalty.flag
tag @s[predicate=gamemode/cs] remove rg.penalty_area.penalty.flag
$execute as @a at @s unless entity @s[tag!rg.penalty_area,x=$(x),y=$(y),z=$(z),dx=$(dx),dy=$(dy),dz=$(dz),predicate=gamemode/cs] run function sco:regine/penalty_area/penalty/out