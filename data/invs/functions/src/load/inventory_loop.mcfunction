# store item slot
execute store result score #Slot invs run data get storage invs:cache Inventory[0].Slot

# distinguish between items with and without tag
execute if data storage invs:cache Inventory[0].tag run function invs:src/load/tag with storage invs:cache Inventory[0]
execute unless data storage invs:cache Inventory[0].tag run function invs:src/load/no_tag with storage invs:cache Inventory[0]

# continue loop if inventory has still items
data remove storage invs:cache Inventory[0]
execute if data storage invs:cache Inventory[0] run function invs:src/load/inventory_loop
