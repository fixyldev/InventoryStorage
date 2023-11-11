# cancel if executing entity is non-player
execute if entity @s[type=!minecraft:player] run return 0

function invs:src/get_uuid
$data modify storage invs:cache Cache.UUID.ID set value $(ID)
function invs:src/is_inventory_with_id with storage invs:cache Cache.UUID

execute if score #Bool invs matches 1 run return 1
execute if score #Bool invs matches 0 run return 0
