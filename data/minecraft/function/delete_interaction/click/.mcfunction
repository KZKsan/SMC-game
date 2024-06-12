#>delete_interaction/click/
#@within advancement delete_interaction/click
tag @s add origin
execute as @e[type=interaction,distance=..500] if function on_checker/target run function delete_interaction/click/delete
tag @s remove origin
advancement revoke @s only delete_interaction/click