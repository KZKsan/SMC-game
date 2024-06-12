#>sco:player/damage_detector/
#@within advancement sco:damage_detector
scoreboard players operation @s score_damage_detected = @s score_damage_teaken
scoreboard players set @s score_damage_teaken 0
advancement revoke @s only sco:damage_detector