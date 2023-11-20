# override item to inventory
$data remove storage invs:inventory Inventory."$(UUID0), $(UUID1), $(UUID2), $(UUID3)".$(ID)[{Slot:$(Slot)b}]
$data modify storage invs:inventory Inventory."$(UUID0), $(UUID1), $(UUID2), $(UUID3)".$(ID) append from entity @s Inventory[{Slot:$(Slot)b}]

# continue loop if further slots present
data remove storage invs:cache Cache.Slot[0]
execute if data storage invs:cache Cache.Slot[0] run data modify storage invs:cache Cache.Arguments.Slot set from storage invs:cache Cache.Slot[0]
execute if data storage invs:cache Cache.Slot[0] run function invs:src/store/inventory_slot_loop with storage invs:cache Cache.Arguments
