$data modify storage invs:cache Cache.Inventory set from storage invs:inventory_with_id Inventory."$(UUID0), $(UUID1), $(UUID2), $(UUID3)".$(ID)
execute if data storage invs:cache Cache.Inventory[0] run function invs:src/load/inventory_loop
