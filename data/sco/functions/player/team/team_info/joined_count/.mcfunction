#>sco:player/team/team_info/joined_count/
#@public 
execute store result storage sco:data team_info.red_players int 1 if entity @a[tag=join_red,predicate=gamemode/as]
execute store result storage sco:data team_info.blue_players int 1 if entity @a[tag=join_blue,predicate=gamemode/as]

function sco:player/team/team_info/joined_count/macro with storage sco:data team_info