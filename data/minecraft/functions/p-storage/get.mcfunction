#>p-storage/get
#@api
data modify storage p-storage data_fetch.UUID set from storage p-storage _[0].UUID
execute store success score #tf _ run data modify storage p-storage data_fetch.UUID set from entity @s UUID
execute if score #tf _ matches 0 run return 0
function p-storage/macro with storage p-storage data_fetch
data modify storage p-storage _ prepend from storage p-storage tmp
data remove storage p-storage tmp