#>p-storage/macro
#@within p-storage/get
$execute unless data storage p-storage _[{UUID:$(UUID)}] run function p-storage/create
$data modify storage p-storage tmp set from storage p-storage _[{UUID:$(UUID)}]
$data remove storage p-storage _[{UUID:$(UUID)}]
