#>math/set_entity/marker
#@within math/**
kill @e[tag=math_entity,tag=marker,type=marker]
summon marker 0.0 0.0 0.0 {Tags:[math_entity,marker]}

#alias entity math_marker @e[tag=math_entity,tag=marker,type=marker,limit=1]