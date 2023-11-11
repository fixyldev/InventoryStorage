# cancel if executing entity is non-player
execute if entity @s[type=!minecraft:player] run return 0

function invs:src/get_uuid
function invs:src/store_inventory with storage invs:cache Cache.UUID

return 1
