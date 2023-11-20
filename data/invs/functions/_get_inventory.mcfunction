# cancel if executing entity is non-player
execute if entity @s[type=!minecraft:player] run return 0

$function invs:_get_inventory_with_id {ID: "default", Storage: $(Storage), Path: $(Path)}

return 1
