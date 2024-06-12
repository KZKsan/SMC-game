#>sco:gamemode_histories/save
#@api
function p-storage/get
execute unless data storage p-storage _[0].data.gamemode_histories run data modify storage p-storage _[0].data.gamemode_histories set value []
data modify storage p-storage _[0].data.gamemode_histories append value {num:{n:0}}
data modify storage p-storage _[0].data.gamemode_histories[-1].num.n set from entity @s playerGameType