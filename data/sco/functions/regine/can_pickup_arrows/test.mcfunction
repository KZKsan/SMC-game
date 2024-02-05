#>sco:regine/can_pickup_arrows/test
#@within sco:main
execute on origin if entity @s[predicate=sco:team_join,team=!spectator] unless entity @s[nbt={Item:{tag:{cant_pickup:true}}}] run return 1
return fail