#>sco_items:item_functions/throwing_limit/slot
#@within sco_items:item_functions/throwing_limit/return_item
$data modify storage _ item_data.Slot set value "hotbar.$(SelectedItemSlot)"
execute store result score # _ if items entity @s weapon.mainhand *
execute store result storage _ item_data.count int 1 run scoreboard players add # _ 1