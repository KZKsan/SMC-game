#>sco:process/game_flag/winner/red
#@public

tellraw @a[predicate=sco:team_join] [{"text": "赤red","color": "red","bold": true},{"text": "チームの勝利です！","color": "white","bold": true}]

function sco:process/game_flag/end