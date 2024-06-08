#>sco:stage_data/stage/blank_fortress/generate/set_field/copy
#@within sco:stage_data/stage/blank_fortress/generate/setup
setblock ^-4 ^-2 ^-1 structure_block[mode=save]{ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"sco:stage_data/blank_fortress/map/tmp",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:5,sizeY:2,sizeZ:5}
setblock ^-4 ^-3 ^-1 redstone_block
fill ^-4 ^-2 ^-1 ^-4 ^-3 ^-1 air
place template sco:stage_data/blank_fortress/map/tmp ^-8 ^-1 ^8 180 none