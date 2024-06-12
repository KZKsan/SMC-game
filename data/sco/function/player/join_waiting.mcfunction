#>sco:player/join_waiting
#@api
execute store result score # _ if entity @a[team=red]
execute store result score #_ _ if entity @a[team=blue]
execute if score # _ > #_ _ run team join blue @r[team=mode.waiting]
execute if score # _ < #_ _ run team join red @r[team=mode.waiting]
team join spectator @a[team=mode.waiting]