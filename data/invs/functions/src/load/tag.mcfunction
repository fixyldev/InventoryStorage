# hotbar
execute if score #Slot invs matches 0..8 run function invs:src/load/tag/hotbar with storage invs:cache Inventory[0]
execute if score #Slot invs matches 0..8 run return 1

# inventory
execute if score #Slot invs matches 9..35 run scoreboard players operation #Slot invs -= #9 invs
execute if score #Slot invs matches 0..26 store result storage invs:cache Inventory[0].Slot byte 1 run scoreboard players get #Slot invs
execute if score #Slot invs matches 0..26 run function invs:src/load/tag/inventory with storage invs:cache Inventory[0]

# offhand
execute if score #Slot invs matches -106 run function invs:src/load/tag/offhand with storage invs:cache Inventory[0]

# head
execute if score #Slot invs matches 103 run function invs:src/load/tag/head with storage invs:cache Inventory[0]

# chest
execute if score #Slot invs matches 102 run function invs:src/load/tag/chest with storage invs:cache Inventory[0]

# legs
execute if score #Slot invs matches 101 run function invs:src/load/tag/legs with storage invs:cache Inventory[0]

# feet
execute if score #Slot invs matches 100 run function invs:src/load/tag/feet with storage invs:cache Inventory[0]
