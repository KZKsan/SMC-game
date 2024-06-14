#>sco_items:item_functions/hidden_cover/leaves/block/test/add_block
#@within sco_items:item_functions/hidden_cover/leaves/block/
$execute if block ~ ~ ~ $(id)_block
$data modify storage sco_items:data hidden_cover.id set value "$(id)_block"