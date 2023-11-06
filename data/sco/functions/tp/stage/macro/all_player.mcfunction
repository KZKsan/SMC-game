#>sco:tp/stage/macro/all_player
#@input $(stage)
$execute as @a[predicate=sco:team_join] run function sco:tp/stage/$(stage)