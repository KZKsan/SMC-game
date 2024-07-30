#>sco:stage_data/stage/desert_mountains/reset
#@within sco:stage_data/reset
time set midnight
forceload add -614 -114 -614 -112
forceload add -592 -128
forceload add -574 -121
forceload add -561 -96 -560 -97

setblock -614 -39 -114 oak_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]
setblock -614 -39 -109 oak_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]

setblock -588 -44 -125 spruce_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]
setblock -583 -44 -125 spruce_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]
setblock -588 -39 -125 spruce_trapdoor[facing=north,half=top,open=true,powered=false,waterlogged=false]
setblock -583 -44 -118 spruce_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]
setblock -588 -44 -118 spruce_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]
setblock -588 -39 -118 spruce_trapdoor[facing=south,half=top,open=true,powered=false,waterlogged=false]

setblock -574 -57 -121 water_cauldron[level=3]
setblock -574 -57 -120 water_cauldron[level=3]

place template sco:stage_data/desert_mountains/dripleaf -564 -61 -98 none none

forceload remove -614 -114 -614 -112
forceload remove -592 -128
forceload remove -574 -121
forceload remove -561 -96 -560 -97
