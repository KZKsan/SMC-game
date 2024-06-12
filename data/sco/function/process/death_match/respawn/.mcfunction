# respawn 1tick
    execute if entity @s[scores={respawnTime=1}] run function sco:regine/penalty_area/reset_flag/single
    execute if entity @s[scores={respawnTime=1}] run function sco:player/respawn/spectator
    