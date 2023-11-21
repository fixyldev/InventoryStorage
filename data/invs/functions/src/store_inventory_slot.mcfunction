$data remove storage invs:inventory Inventory."$(UUID0), $(UUID1), $(UUID2), $(UUID3)".$(ID)

data modify storage invs:cache Cache.Arguments.Slot set from storage invs:cache Cache.Slot[0]

function invs:src/store/inventory_slot_loop with storage invs:cache Cache.Arguments
