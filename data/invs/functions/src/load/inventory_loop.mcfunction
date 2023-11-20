# get item from inventory
data modify storage invs:cache Cache.Item set from storage invs:cache Cache.Inventory[0]

# store item slot
execute store result score #Slot invs run data get storage invs:cache Cache.Item.Slot

# distinguish between items with and without tag
execute if data storage invs:cache Cache.Item.tag run function invs:src/load/tag
execute unless data storage invs:cache Cache.Item.tag run function invs:src/load/no_tag

# continue loop if inventory has still items
data remove storage invs:cache Cache.Inventory[0]
execute if data storage invs:cache Cache.Inventory[0] run function invs:src/load/inventory_loop
