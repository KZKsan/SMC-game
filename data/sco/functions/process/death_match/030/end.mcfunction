#>sco:process/death_match/030/end
#@within sco:process/death_match/030
execute as @e[type=#arrows] if function sco:regine/can_pickup_arrows/test run kill
scoreboard players set #process game 31
scoreboard players set #runtime game 0