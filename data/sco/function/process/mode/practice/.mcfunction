#>sco:process/mode/practice/
#@within sco:main
setblock 315 -50 -172 minecraft:campfire[facing=west,lit=true,signal_fire=false,waterlogged=false]{CookingTimes:[I;0,0,0,0],CookingTotalTimes:[I;0,0,0,0],Items:[]}
execute as @a[tag=!rg.off,predicate=gamemode/as,x=271, y=-7 ,z=-193, dx=145, dy=4, dz=145] run damage @s 1000 sco:outside_border
execute as @a[team=mode.practice,scores={respawnTime=1}] run function sco:process/mode/practice/respawn