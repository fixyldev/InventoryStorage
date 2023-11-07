# cancel if executing entity is non-player
execute if entity @s[type=!minecraft:player] run return 0

function invs:src/get_uuid
$data modify storage invs:cache UUID.ID set value $(ID)
function invs:src/load_inventory_with_id with storage invs:cache UUID

return 1
