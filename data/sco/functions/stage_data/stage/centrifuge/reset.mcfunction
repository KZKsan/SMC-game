#>sco:stage_data/stage/centrifuge/reset
#@within sco:stage/reset
forceload add -417 -167
fill -419 -49 -168 -419 -48 -168 air
setblock -419 -49 -168 minecraft:oak_door[facing=west,half=lower,hinge=right,open=false,powered=false]
setblock -419 -48 -168 minecraft:oak_door[facing=west,half=upper,hinge=right,open=false,powered=false]
setblock -424 -54 -168 minecraft:lever[face=floor,facing=south,powered=true]
setblock -424 -55 -169 minecraft:lever[face=wall,facing=north,powered=true]
setblock -427 -55 -169 minecraft:lever[face=wall,facing=north,powered=true]
forceload remove -417 -167