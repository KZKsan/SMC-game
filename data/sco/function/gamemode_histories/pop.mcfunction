#>sco:gamemode_histories/pop
#@api
function p-storage/get
execute unless data storage p-storage _[0].data.gamemode_histories[0] run return fail
execute if data storage p-storage _[0].data.gamemode_histories[-1].num{n:0} run gamemode survival
execute if data storage p-storage _[0].data.gamemode_histories[-1].num{n:1} run gamemode creative
execute if data storage p-storage _[0].data.gamemode_histories[-1].num{n:2} run gamemode adventure
execute if data storage p-storage _[0].data.gamemode_histories[-1].num{n:3} run gamemode spectator
data remove storage p-storage _[0].data.gamemode_histories[-1]