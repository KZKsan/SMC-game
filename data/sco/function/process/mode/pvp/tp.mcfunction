#>sco:process/mode/pvp/tp
#@within sco:process/mode/pvp/**
execute store result score # _ run random value 0..5
execute if score # _ matches 0 run teleport @s 386 -50 -121 90 0
execute if score # _ matches 1 run teleport @s 387 -52 -105 135 0
execute if score # _ matches 2 run teleport @s 387 -52 -136 45 0
execute if score # _ matches 3 run teleport @s 398 -50 -120 -90 0
execute if score # _ matches 4 run teleport @s 409 -50 -127 90 0
execute if score # _ matches 5 run teleport @s 409 -50 -114 90 0