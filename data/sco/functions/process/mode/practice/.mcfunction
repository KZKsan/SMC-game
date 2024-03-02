#>sco:process/mode/practice/
#@within sco:main

execute as @a[tag=!rg.off,predicate=gamemode/as,x=271, y=-7 ,z=-193, dx=145, dy=4, dz=145] run damage @s 1000 sco:outside_border
execute as @a[team=mode.practice,scores={respawnTime=1}] run function sco:process/mode/practice/respawn