#>sco:regine/arrows/others
#@within sco:main
execute unless score @s[nbt=!{pickup:0b}] can_pickup_arrow matches 0 store success entity @s pickup byte 1 if entity @s[nbt={pickup:0b}]
execute unless score @s[nbt={inGround:1b,life:1s}] can_pickup_arrow matches 0 run data modify entity @s life set value 1100s
data modify entity @s[nbt={inGround:1b,life:1s},scores={can_pickup_arrow=0}] life set value 900s