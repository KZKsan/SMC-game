#>p-storage/get
#@api
data modify storage p-storage fetch.UUID set from entity @s UUID
function p-storage/macro with storage p-storage fetch
data modify storage p-storage _ prepend from storage p-storage tmp
data remove storage p-storage tmp