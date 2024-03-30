#>sco:stage_data/stage/blank_fortress/object/bomb/explosion/damage/friendlyfire_on
#@within sco:stage_data/stage/blank_fortress/object/bomb/explosion/
execute as @a[predicate=gamemode/as,distance=..1.1] run damage @s 30 sco:explosion at ~ ~ ~
execute as @a[predicate=gamemode/as,distance=1.1..2.5] run damage @s 10 sco:explosion at ~ ~ ~
execute as @a[predicate=gamemode/as,distance=2.5..3.8] run damage @s 7 sco:explosion at ~ ~ ~
execute as @a[predicate=gamemode/as,distance=3.8..5] run damage @s 4 sco:explosion at ~ ~ ~