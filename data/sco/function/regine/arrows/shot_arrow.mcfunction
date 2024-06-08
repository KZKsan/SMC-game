#>sco:regine/arrows/shot_arrow
#@within sco:main
execute if data storage sco:input game{can_pickup_arrows:true} if function sco:regine/can_pickup_arrows/test run scoreboard players set @s can_pickup_arrow 0
function sco:player/result/arrows/shot
