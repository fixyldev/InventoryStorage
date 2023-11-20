# cancel if executing entity is non-player
execute if entity @s[type=!minecraft:player] run return 0

$function invs:_load_inventory_slot_with_id {ID: "default", Slot: $(Slot)}

return 1
