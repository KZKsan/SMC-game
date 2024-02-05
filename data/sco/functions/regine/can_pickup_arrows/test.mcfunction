#>sco:regine/can_pickup_arrows/test
#@api
execute unless entity @s[nbt={Item:{tag:{cant_pickup:true}}}] on origin if entity @s[predicate=sco:team_join,team=!spectator] run return 1
return fail