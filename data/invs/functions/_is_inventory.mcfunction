# cancel if executing entity is non-player
execute if entity @s[type=!minecraft:player] run return 0

function invs:_is_inventory_with_id {ID: "default"}

execute if score #Bool invs matches 1 run return 1
execute if score #Bool invs matches 0 run return 0
