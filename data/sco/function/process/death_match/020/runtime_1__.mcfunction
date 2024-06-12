#>sco:process/death_match/020/runtime_1__
#@within sco:process/death_match/020
function sco:player/team/team_info/joined_count/
#リスポーン
execute as @a[team=red,scores={respawnTime=1}] run function sco:tp/macro with storage sco:data respawn[{name:"shop_red"}]
execute as @a[team=blue,scores={respawnTime=1}] run function sco:tp/macro with storage sco:data respawn[{name:"shop_blue"}]
