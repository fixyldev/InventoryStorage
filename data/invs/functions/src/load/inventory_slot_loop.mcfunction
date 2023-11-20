# get item from inventory
data remove storage invs:cache Cache.Item
$data modify storage invs:cache Cache.Item set from storage invs:inventory Inventory."$(UUID0), $(UUID1), $(UUID2), $(UUID3)".$(ID)[{Slot:$(Slot)b}]

# store item slot
execute store result score #Slot invs run data get storage invs:cache Cache.Item.Slot

# distinguish between items with and without tag
execute if data storage invs:cache Cache.Item.tag run function invs:src/load/tag
execute unless data storage invs:cache Cache.Item.tag run function invs:src/load/no_tag

# continue loop if further slots present
data remove storage invs:cache Cache.Slot[0]
execute if data storage invs:cache Cache.Slot[0] run data modify storage invs:cache Cache.Arguments.Slot set from storage invs:cache Cache.Slot[0]
execute if data storage invs:cache Cache.Slot[0] run function invs:src/load/inventory_slot_loop with storage invs:cache Cache.Arguments
