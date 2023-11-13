$data modify storage invs:cache Cache.Inventory set from storage invs:inventory Inventory."$(UUID0), $(UUID1), $(UUID2), $(UUID3)"
execute if data storage invs:cache Cache.Inventory[0] run function invs:src/load/inventory_loop
