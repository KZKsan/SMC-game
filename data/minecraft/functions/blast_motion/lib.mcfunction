#>minecraft:blast_motion/lib
#@reads
#>
#@within blast_motion/**
scoreboard objectives add blast_motion_return.0 dummy
scoreboard objectives add blast_motion_return.1 dummy
scoreboard objectives add blast_motion_return.2 dummy
scoreboard objectives add blast_motion_pos.0 dummy
scoreboard objectives add blast_motion_pos.1 dummy
scoreboard objectives add blast_motion_pos.2 dummy
scoreboard objectives add last_gamemode dummy
scoreboard objectives add blast_motion dummy
scoreboard objectives add blast_count dummy
team add no_push

team modify no_push collisionRule never