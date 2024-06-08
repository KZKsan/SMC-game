#>sco:process/kick_out/130/end
#@within sco:process/kick_out/130
execute as @e[type=#arrows] if function sco:regine/can_pickup_arrows/test run kill
scoreboard players set #process game 131
scoreboard players set #runtime game 0