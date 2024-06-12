#>sco:stage_data/stage/blank_fortress/object/bomb/explosion/damage/friendlyfire_off
#@within sco:stage_data/stage/blank_fortress/object/bomb/explosion/
#declare damage_type sco:explosion
$execute as @a[team=$(team),predicate=gamemode/as,distance=..1] run damage @s 12 sco:explosion at ~ ~ ~
$execute as @a[team=$(team),predicate=gamemode/as,distance=..2.5] run damage @s 3 sco:explosion at ~ ~ ~
$execute as @a[team=$(team),predicate=gamemode/as,distance=..3.8] run damage @s 4 sco:explosion at ~ ~ ~
$execute as @a[team=$(team),predicate=gamemode/as,distance=..5] run damage @s 1 sco:explosion at ~ ~ ~