#>smc:main
#@within minecraft:tick

#declare score_holder process
#declare score_holder runtime
execute if score runtime game matches 0.. run scoreboard players add runtime game 1
execute as @a if score last gameID matches -2147483648..2147483647 unless score @s gameID = last gameID run function smc:player/retune_lobby
execute as @a unless score last gameID matches -2147483648..2147483647 if score @s gameID matches -2147483648..2147483647 run function smc:player/retune_lobby


#0. none
execute if score process game matches 0 run function smc:process/0

#1.マップ用意
execute if score process game matches 10 run function smc:process/10

#2.マップ確認
execute if score process game matches 11 run function smc:process/11

#3.ショップ
execute if score process game matches 20 run function smc:process/20


#4.ゲーム
execute if score process game matches 30 run function smc:process/30

#5.サドンデス
#6.終了
execute if score process game matches 40 run function smc:process/40

