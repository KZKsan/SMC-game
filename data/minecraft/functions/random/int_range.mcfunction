#>minecraft:random/int_range
#@api
#
#@input score
#       $ranmin _
#       $ranmax _
#@output score $random _
function random/int_uuid
execute if score $ranmax _ < $ranmin _ run scoreboard players operation $ranmax _ >< $ranmin _
scoreboard players operation $ranmax _ -= $ranmin _
scoreboard players add $ranmax _ 1
scoreboard players operation $random _ %= $ranmax _
scoreboard players operation $random _ += $ranmin _