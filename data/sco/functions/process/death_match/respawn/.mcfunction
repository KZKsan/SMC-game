# respawn 1tick
    execute if entity @s[scores={respawnTime=1}] run function sco:regine/penalty_area/reset_flag/single
    execute if entity @s[scores={respawnTime=1}] run function sco:player/respawn/spectator
    
## if (respawnTime == RespawnTime(gamedata) - 100)
#    scoreboard players operation willRespawnTime _ = $RespawnTime gameData
#    scoreboard players remove willRespawnTime _ 100
#    execute if score @s respawnTime = willRespawnTime _ run tellraw @s {"translate":"message.respawn","bold": true}
#    execute if score @s respawnTime = willRespawnTime _ at @s run playsound block.note_block.chime record @s ~ ~ ~ 10 1
#    scoreboard players add willRespawnTime _ 2
#    execute if score @s respawnTime = willRespawnTime _ at @s run playsound block.note_block.chime record @s ~ ~ ~ 10 1
#    scoreboard players add willRespawnTime _ 2
#    execute if score @s respawnTime = willRespawnTime _ at @s run playsound block.note_block.chime record @s ~ ~ ~ 10 1
#
# if (respawnTime == RespawnTime(gamedata))
#    execute if score @s respawnTime = $RespawnTime gameData run function core:player/respawn/respawn

# spawn_point particle
#    execute if entity @s[team=team1,gamemode=spectator] at @s at @e[tag=spawn_point,tag=team1,limit=1,sort=nearest] align xyz positioned ~0.5 ~ ~0.5 run function core:player/respawn/particle
#    execute if entity @s[team=team2,gamemode=spectator] at @s at @e[tag=spawn_point,tag=team2,limit=1,sort=nearest] align xyz positioned ~0.5 ~ ~0.5 run function core:player/respawn/particle