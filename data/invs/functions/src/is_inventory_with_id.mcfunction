$execute if data storage invs:inventory_with_id Inventory."$(0), $(1), $(2), $(3)".$(ID) run scoreboard players set #Bool invs 1
$execute unless data storage invs:inventory_with_id Inventory."$(0), $(1), $(2), $(3)".$(ID) run scoreboard players set #Bool invs 0
