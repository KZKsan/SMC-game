#>p-storage/get
#@api
execute store success score #tf _ run data modify storage p-storage fetch.UUID set from entity @s UUID
execute if score #tf _ matches 0 run return 0
function p-storage/macro with storage p-storage fetch
data modify storage p-storage _ prepend from storage p-storage tmp
data remove storage p-storage tmp