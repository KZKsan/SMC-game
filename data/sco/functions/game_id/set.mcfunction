#>sco:game_id/set
execute store result score last gameID run random value 0..2147483646
scoreboard players operation @a gameID = last gameID