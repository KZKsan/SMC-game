#>sco:stage_data/stage/endroll/gimmick
#@within sco:stage_data/gimmick
#declare damage_type sco:fall
execute as @a[predicate=gamemode/as,x=-560,y=-64,z=-318,dx=78,dy=27,dz=107,nbt={OnGround:1b}] at @s run damage @s 1000 sco:fall
execute as @a[predicate=gamemode/as,x=-560,y=-70,z=-318,dx=78,dy=6,dz=107] at @s run damage @s 1000 out_of_world
setblock -548 -30 -236 minecraft:fire[age=0,east=false,north=false,south=false,up=false,west=false]
setblock -547 -29 -238 minecraft:fire[age=0,east=false,north=false,south=false,up=false,west=false]
setblock -544 -30 -237 minecraft:fire[age=0,east=false,north=false,south=false,up=false,west=false]
setblock -494 -30 -292 minecraft:fire[age=0,east=false,north=false,south=false,up=false,west=false]
setblock -495 -29 -290 minecraft:fire[age=0,east=false,north=false,south=false,up=false,west=false]
setblock -498 -30 -291 minecraft:fire[age=0,east=false,north=false,south=false,up=false,west=false]