#>sco:process/escalation/item
#@within sco:process/escalation/**
$execute if entity @s[team=red] run function sco_items:kit/escalation/lvl$(red_lvl)/0
$execute if entity @s[team=blue] run function sco_items:kit/escalation/lvl$(blue_lvl)/0