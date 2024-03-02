#>delete_interaction/attack/
#@within advancement delete_interaction/attack
tag @s add origin
execute as @e[type=interaction,distance=..500] if function on_checker/attacker run function delete_interaction/attack/delete
tag @s remove origin
advancement revoke @s only delete_interaction/attack