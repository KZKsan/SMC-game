#>sco:tp/respawn/save
#@api
function p-storage/get
$data modify storage p-storage _[0].data.respawn set from storage sco:data respawn[{name:"$(name)"}]
