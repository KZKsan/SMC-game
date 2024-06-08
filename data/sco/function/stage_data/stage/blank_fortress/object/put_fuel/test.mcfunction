#>sco:stage_data/stage/blank_fortress/object/put_fuel/test
#@within sco:stage_data/stage/blank_fortress/object/shield/
execute on target if items entity @s container.* coal[custom_data~{item_functions:{stage_item:{fuel:1b}}}] run return 1
return fail