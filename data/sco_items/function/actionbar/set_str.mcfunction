#>sco_items:actionbar/set_str
#@api
#declare tag item_actionbar
function p-storage/get
execute if data storage p-storage _[0].data.item_actionbar[0] run data modify storage p-storage _[0].data.item_actionbar append value ",{\"text\":\" \"},"