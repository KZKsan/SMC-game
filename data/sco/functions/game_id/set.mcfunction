#>sco:game_id/set
execute store result score last gameID run random value -2147483648..2147483647
scoreboard players operation @a gameID = last gameID