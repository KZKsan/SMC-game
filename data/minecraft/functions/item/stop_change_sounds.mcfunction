#>item/stop_change_sounds
#@api
execute unless data storage _ data_fetch.id run return fail
execute if data storage _ data_fetch{id:"minecraft:elytra"} run stopsound @a[distance=..6] player item.armor.equip_elytra
execute if data storage _ data_fetch{id:"minecraft:leather_helmet"} run stopsound @a[distance=..6] player item.armor.equip_leather
execute if data storage _ data_fetch{id:"minecraft:leather_chestplate"} run stopsound @a[distance=..6] player item.armor.equip_leather
execute if data storage _ data_fetch{id:"minecraft:leather_leggings"} run stopsound @a[distance=..6] player item.armor.equip_leather
execute if data storage _ data_fetch{id:"minecraft:leather_boots"} run stopsound @a[distance=..6] player item.armor.equip_leather
execute if data storage _ data_fetch{id:"minecraft:golden_helmet"} run stopsound @a[distance=..6] player item.armor.equip_gold
execute if data storage _ data_fetch{id:"minecraft:golden_chestplate"} run stopsound @a[distance=..6] player item.armor.equip_gold
execute if data storage _ data_fetch{id:"minecraft:golden_leggings"} run stopsound @a[distance=..6] player item.armor.equip_gold
execute if data storage _ data_fetch{id:"minecraft:golden_boots"} run stopsound @a[distance=..6] player item.armor.equip_gold
execute if data storage _ data_fetch{id:"minecraft:chainmail_helmet"} run stopsound @a[distance=..6] player item.armor.equip_chain
execute if data storage _ data_fetch{id:"minecraft:chainmail_chestplate"} run stopsound @a[distance=..6] player item.armor.equip_chain
execute if data storage _ data_fetch{id:"minecraft:chainmail_leggings"} run stopsound @a[distance=..6] player item.armor.equip_chain
execute if data storage _ data_fetch{id:"minecraft:chainmail_boots"} run stopsound @a[distance=..6] player item.armor.equip_chain
execute if data storage _ data_fetch{id:"minecraft:iron_helmet"} run stopsound @a[distance=..6] player item.armor.equip_iron
execute if data storage _ data_fetch{id:"minecraft:iron_chestplate"} run stopsound @a[distance=..6] player item.armor.equip_iron
execute if data storage _ data_fetch{id:"minecraft:iron_leggings"} run stopsound @a[distance=..6] player item.armor.equip_iron
execute if data storage _ data_fetch{id:"minecraft:iron_boots"} run stopsound @a[distance=..6] player item.armor.equip_iron
execute if data storage _ data_fetch{id:"minecraft:diamond_helmet"} run stopsound @a[distance=..6] player item.armor.equip_diamond
execute if data storage _ data_fetch{id:"minecraft:diamond_chestplate"} run stopsound @a[distance=..6] player item.armor.equip_diamond
execute if data storage _ data_fetch{id:"minecraft:diamond_leggings"} run stopsound @a[distance=..6] player item.armor.equip_diamond
execute if data storage _ data_fetch{id:"minecraft:diamond_boots"} run stopsound @a[distance=..6] player item.armor.equip_diamond
execute if data storage _ data_fetch{id:"minecraft:netherite_helmet"} run stopsound @a[distance=..6] player item.armor.equip_netherite
execute if data storage _ data_fetch{id:"minecraft:netherite_chestplate"} run stopsound @a[distance=..6] player item.armor.equip_netherite
execute if data storage _ data_fetch{id:"minecraft:netherite_leggings"} run stopsound @a[distance=..6] player item.armor.equip_netherite
execute if data storage _ data_fetch{id:"minecraft:netherite_boots"} run stopsound @a[distance=..6] player item.armor.equip_netherite
execute if data storage _ data_fetch{id:"minecraft:turtle_helmet"} run stopsound @a[distance=..6] player item.armor.equip_turtle
return 1