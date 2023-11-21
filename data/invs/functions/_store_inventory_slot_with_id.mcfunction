# cancel if executing entity is non-player
execute if entity @s[type=!minecraft:player] run return 0

function invs:src/get_uuid
$data modify storage invs:cache Cache.Arguments.ID set value $(ID)
$data modify storage invs:cache Cache.Slot set value $(Slot)
execute if data storage invs:cache Cache.Slot[0] run function invs:src/store_inventory_slot with storage invs:cache Cache.Arguments

return 1
