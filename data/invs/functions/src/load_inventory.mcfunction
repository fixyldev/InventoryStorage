$data modify storage invs:cache Inventory set from storage invs:inventory "$(0), $(1), $(2), $(3)"
execute if data storage invs:cache Inventory[0] run function invs:src/load/inventory_loop
