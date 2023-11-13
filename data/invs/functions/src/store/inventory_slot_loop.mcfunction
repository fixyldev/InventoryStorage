$execute if data storage invs:inventory Inventory."$(UUID0), $(UUID1), $(UUID2), $(UUID3)"[{Slot:$(Slot)b}] run data remove storage invs:inventory Inventory."$(UUID0), $(UUID1), $(UUID2), $(UUID3)"[{Slot:$(Slot)b}]
$data modify storage invs:inventory Inventory."$(UUID0), $(UUID1), $(UUID2), $(UUID3)" append from entity @s Inventory[{Slot:$(Slot)b}]

data remove storage invs:cache Cache.Slot[0]
execute if data storage invs:cache Cache.Slot[0] run data modify storage invs:cache Cache.Arguments.Slot set from storage invs:cache Cache.Slot[0]
execute if data storage invs:cache Cache.Slot[0] run function invs:src/store/inventory_slot_loop with storage invs:cache Cache.Arguments
