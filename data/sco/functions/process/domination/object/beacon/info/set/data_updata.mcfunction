#>sco:process/domination/object/beacon/info/set/data_updata
#@within sco:process/domination/object/beacon/info/set/teleport
data modify entity @s text set value '{"text":""}'
data modify entity @s text set value '[{"score":{"name": "#", "objective": "_"}},{"text": "%"}]'
tag @s add beacon.info.already
tag @s remove target