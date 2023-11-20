# hotbar
execute if score #Slot invs matches 0..8 run function invs:src/load/tag/hotbar with storage invs:cache Cache.Item
execute if score #Slot invs matches 0..8 run return 1

# inventory
execute if score #Slot invs matches 9..35 run scoreboard players operation #Slot invs -= #9 invs
execute if score #Slot invs matches 0..26 store result storage invs:cache Cache.Item.Slot byte 1 run scoreboard players get #Slot invs
execute if score #Slot invs matches 0..26 run function invs:src/load/tag/inventory with storage invs:cache Cache.Item

# offhand
execute if score #Slot invs matches -106 run function invs:src/load/tag/offhand with storage invs:cache Cache.Item

# head
execute if score #Slot invs matches 103 run function invs:src/load/tag/head with storage invs:cache Cache.Item

# chest
execute if score #Slot invs matches 102 run function invs:src/load/tag/chest with storage invs:cache Cache.Item

# legs
execute if score #Slot invs matches 101 run function invs:src/load/tag/legs with storage invs:cache Cache.Item

# feet
execute if score #Slot invs matches 100 run function invs:src/load/tag/feet with storage invs:cache Cache.Item
