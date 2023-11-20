# cancel if executing entity is non-player
execute if entity @s[type=!minecraft:player] run return 0

function invs:_remove_inventory_with_id {ID: "default"}

return 1
