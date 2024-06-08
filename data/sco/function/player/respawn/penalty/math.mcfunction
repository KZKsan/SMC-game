#>sco:player/respawn/penalty/math
#@within sco:process/**

scoreboard players set @s respawn.penalty 0
scoreboard players operation # _ = @s respawn.penalty.damage_dealt
scoreboard players operation # _ /= #respawn.penalty.damage_dealt.div game
scoreboard players operation # _ *= #respawn.penalty.damage_dealt.add_value game
scoreboard players operation @s respawn.penalty += # _
scoreboard players operation # _ = @s respawn.penalty.kill
scoreboard players operation # _ /= #respawn.penalty.kill.div game
scoreboard players operation # _ *= #respawn.penalty.kill.add_value game
scoreboard players operation @s respawn.penalty += # _
scoreboard players operation # _ = @s respawn.penalty.throwing_potion.splash
scoreboard players operation # _ += @s respawn.penalty.throwing_potion.lingering
scoreboard players operation # _ /= #respawn.penalty.throwing_potion.div game
scoreboard players operation # _ *= #respawn.penalty.throwing_potion.add_value game
scoreboard players operation @s respawn.penalty += # _
scoreboard players operation # _ = @s respawn.penalty.drinking_potion
scoreboard players operation # _ /= #respawn.penalty.drinking_potion.div game
scoreboard players operation # _ *= #respawn.penalty.drinking_potion.add_value game
scoreboard players operation @s respawn.penalty += # _