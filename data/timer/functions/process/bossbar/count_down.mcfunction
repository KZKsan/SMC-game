#>timer:process/bossbar/count_down
#@wihtin timer:process/bossbar/
execute if score s timer matches 10.. run bossbar set timer: name [{"nbt":"name","storage": "timer:","interpret": true},{"score":{"name": "m","objective": "timer"}},{"text": ":"},{"score":{"name": "s","objective": "timer"}}]
execute if score s timer matches ..9 run bossbar set timer: name [{"nbt":"name","storage": "timer:","interpret": true},{"score":{"name": "m","objective": "timer"}},{"text": ":0"},{"score":{"name": "s","objective": "timer"}}]
