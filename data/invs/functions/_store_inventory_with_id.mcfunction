function invs:src/get_uuid
$data modify storage invs:cache UUID.ID set value $(ID)
function invs:src/store_inventory_with_id with storage invs:cache UUID
