#>sco:process/domination/object/beacon/info/set/teleport
#@within sco:process/domination/object/beacon/info/set/macro
execute facing entity @e[type=item_display,limit=1,tag=beacon.core,tag=origin] eyes run teleport @e[tag=target,type=text_display,limit=1] ^ ^ ^ ~ ~
execute as @e[tag=target,type=text_display,limit=1] run function sco:process/domination/object/beacon/info/set/data_updata