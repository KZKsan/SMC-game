#>sco:process/game_flag/winner/blue
#@within sco:process/game_flag/winner/

tellraw @a[predicate=sco:team_join] [{"text": "青blue","color": "blue","bold": true},{"text": "チームの勝利です！","color": "white","bold": true}]

function sco:process/game_flag/end