#>p-storage/create
#@api
data modify storage p-storage _ prepend value {UUID:[I;0,0,0,0],data:{}}
data modify storage p-storage _[0].UUID set from entity @s UUID