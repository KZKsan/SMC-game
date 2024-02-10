#>sco:stage_data/stage/endroll/data
#@within sco:stage_data/data_fetch
data modify storage sco:input stage set value "endroll"
data modify storage sco:input shop set value "endroll"
data modify storage sco:input options set value {reset:1b,gimmick:true}
data modify storage sco:input block_area.input append value {name:"stage",1:[-466, 15, -210],2:[-575, -64, -319]}
data modify storage sco:input block_area.input append value {name:"shop",1:[-466, 15, -210],2:[-575, -64, -319]}
data modify storage sco:input penalty_area.input.flags.penalty set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.flags.death set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.death append value {name:"stage",1:[-463, 15, -322],2:[-578, -84, -207]}
data modify storage sco:input penalty_area.input.penalty append value {name:"stage",1:[-463, 15, -322],2:[-578, -84, -207]}
data modify storage sco:input penalty_area.input.death append value {name:"shop",1:[-463, 15, -322],2:[-578, -84, -207]}
data modify storage sco:input penalty_area.input.penalty append value {name:"shop",1:[-463, 15, -322],2:[-578, -84, -207]}
data modify storage sco:input stage_name set value '{"text":"エンドロール"}'
data modify storage sco:input respawn append value {name:"stage_red",pos:"-551 -30 -234 -135 0"}
data modify storage sco:input respawn append value {name:"stage_blue",pos:"-491 -30 -294 45 0"}
data modify storage sco:input respawn append value {name:"shop_red",pos:"-573 -26 -277 -70 0"}
data modify storage sco:input respawn append value {name:"shop_blue",pos:"-469 -26 -252 110 0"}
function sco:stage_data/sudden_death/
execute store result storage sco:input options.time byte 1 run random value 0..2
execute store result score # _ run random value 0..9
execute if score # _ matches 0 run data modify storage sco:input stage_description set value '[{"text":"「---さん、あなた恨みます。」"}]'
execute if score # _ matches 1 run data modify storage sco:input stage_description set value '[{"text":"「...この...ひ...ご......し...------」"}]'
execute if score # _ matches 2 run data modify storage sco:input stage_description set value '[{"text":"「---後の最------大---吐きや---ってっ！」"}]'
execute if score # _ matches 3 run data modify storage sco:input stage_description set value '[{"text":"「......し...る...」"}]'
execute if score # _ matches 4 run data modify storage sco:input stage_description set value '[{"text":"「------が！お------が悪いんだ！---あひゃひゃははははハはは-------------！！！」"}]'
execute if score # _ matches 5 run data modify storage sco:input stage_description set value '[{"text":"「......し...る...」"}]'
execute if score # _ matches 6 run data modify storage sco:input stage_description set value '[{"text":"「こ------魔め！---------------！」"}]'
execute if score # _ matches 7 run data modify storage sco:input stage_description set value '[{"text":"「...こ......や......ため...泣......よ...」"}]'
execute if score # _ matches 8 run data modify storage sco:input stage_description set value '[{"text":"「...がだ......。はや......迎.........か.........」"}]'
execute if score # _ matches 9 run data modify storage sco:input stage_description set value '[{"text":"「ん---た---意------ない------な------す---！」"}]'