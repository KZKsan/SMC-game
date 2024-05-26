#>sco:process/domination/object/beacon/info/set/summon
#@within sco:process/domination/object/beacon/info/set/
summon text_display ^ ^ ^ {text:'[{"score":{"name": "#", "objective": "_"}},{"text": "%"}]',Tags:[sco-object,beacon.info],billboard:"fixed",view_range:0.05f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.03f,0.03f,0.03f],translation:[0.0f,0.0f,0.1f]},alignment:"center",Passengers:[{id:"marker",Tags:[sco-object,beacon.info.marker,set_data],data:{UUID:[I;0,0,0,0]}}]}
#execute anchored eyes facing entity @e[tag=origin,limit=1] feet run teleport @e[type=text_display,tag=beacon.info,tag=set_data,limit=1] ^ ^ ^ ~ ~
scoreboard players operation @e[type=marker,tag=beacon.info.marker,tag=set_data,limit=1] stage_object.count.0 = @e[type=item_display,limit=1,tag=beacon.core,tag=origin] stage_object.count.0
data modify entity @e[type=marker,tag=beacon.info.marker,tag=set_data,limit=1] data.UUID set from entity @s UUID

tag @e[type=marker,tag=beacon.info.marker,tag=set_data,limit=1] remove set_data