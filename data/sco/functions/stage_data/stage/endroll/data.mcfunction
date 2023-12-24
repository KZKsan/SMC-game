#>sco:stage_data/stage/endroll/data
#@within sco:stage_data/data_fetch
data modify storage sco:data stage set value "endroll"
data modify storage sco:data shop set value "endroll"
data modify storage sco:data options set value {reset:1b,gimmick:true}
data modify storage sco:data regine_area.stage set value {1:[-466, 15, -210],2:[-575, -64, -319]}
data modify storage sco:data stage_name set value '{"text":"エンドロール"}'
data modify storage sco:data regine_area.shop set from storage sco:data regine_area.stage
function sco:stage_data/sudden_death/

execute store result storage sco:data options.time byte 1 run random value 0..2
execute store result score # _ run random value 0..9
execute if score # _ matches 0 run data modify storage sco:data stage_description set value '[{"text":"「---さん、あなた恨みます。」"}]'
execute if score # _ matches 1 run data modify storage sco:data stage_description set value '[{"text":"「...この...ひ...ご......し...------」"}]'
execute if score # _ matches 2 run data modify storage sco:data stage_description set value '[{"text":"「---後の最------大---吐きや---ってっ！」"}]'
execute if score # _ matches 3 run data modify storage sco:data stage_description set value '[{"text":"「......し...る...」"}]'
execute if score # _ matches 4 run data modify storage sco:data stage_description set value '[{"text":"「------が！お------が悪いんだ！---あひゃひゃははははハはは-------------！！！」"}]'
execute if score # _ matches 5 run data modify storage sco:data stage_description set value '[{"text":"「......し...る...」"}]'
execute if score # _ matches 6 run data modify storage sco:data stage_description set value '[{"text":"「こ------魔め！---------------！」"}]'
execute if score # _ matches 7 run data modify storage sco:data stage_description set value '[{"text":"「...こ......や......ため...泣......よ...」"}]'
execute if score # _ matches 8 run data modify storage sco:data stage_description set value '[{"text":"「...がだ......。はや......迎.........か.........」"}]'
execute if score # _ matches 9 run data modify storage sco:data stage_description set value '[{"text":"「ん---た---意------ない------な------す---！」"}]'