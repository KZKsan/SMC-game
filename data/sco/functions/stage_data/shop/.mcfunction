#>sco:stage_data/shop/
#@within sco:stage_data/**
data modify storage sco:input block_area.input append value {name:"shop",1:[-33, -57, 13],2:[-15, -47, 31]}
data modify storage sco:input penalty_area.input.penalty append value {name:"shop_red",1:[-33, -57, 13],2:[-15, -46, 21]}
data modify storage sco:input penalty_area.input.death append value {name:"shop_red",1:[-33, -57, 13],2:[-15, -46, 21]}
data modify storage sco:input penalty_area.input.penalty append value {name:"shop_blue",1:[-15, -46, 23],2:[-33, -57, 31]}
data modify storage sco:input penalty_area.input.death append value {name:"shop_blue",1:[-15, -46, 23],2:[-33, -57, 31]}
data modify storage sco:input respawn append value {name:"shop_red",pos:"-24 -57 19"}
data modify storage sco:input respawn append value {name:"shop_blue",pos:"-24 -57 25"}