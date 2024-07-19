#>sco:process/escalation/432/end
#@within sco:process/escalation/432
execute as @e[type=#arrows] if function sco:regine/can_pickup_arrows/test run kill
scoreboard players set #process game 431
scoreboard players set #runtime game 0