# cancel if executing entity is non-player
execute if entity @s[type=!minecraft:player] run return 0

function invs:src/get_uuid
$data modify storage invs:cache Cache.Slot set value $(Slot)
execute if data storage invs:cache Cache.Slot[0] run data modify storage invs:cache Cache.Arguments.Slot set from storage invs:cache Cache.Slot[0]
execute if data storage invs:cache Cache.Slot[0] run function invs:src/store/inventory_slot_loop with storage invs:cache Cache.Arguments

return 1
