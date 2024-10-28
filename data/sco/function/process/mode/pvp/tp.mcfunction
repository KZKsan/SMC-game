#>sco:process/mode/pvp/tp
#@within sco:process/mode/pvp/**
execute store result score # _ run random value 0..5
execute if score # _ matches 0 run teleport @s 477 -44 -153 -120 0
execute if score # _ matches 1 run teleport @s 501 -44 -153 120 0
execute if score # _ matches 2 run teleport @s 501 -44 -183 60 0
execute if score # _ matches 3 run teleport @s 477 -44 -183 -60 0
execute if score # _ matches 4 run teleport @s 477 -36 -183 -60 0
execute if score # _ matches 5 run teleport @s 477 -36 -153 -120 0
execute if score # _ matches 6 run teleport @s 501 -36 -153 120 0
execute if score # _ matches 7 run teleport @s 501 -36 -183 60 0