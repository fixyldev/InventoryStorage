$execute if data storage invs:inventory_with_id Inventory."$(UUID0), $(UUID1), $(UUID2), $(UUID3)".$(ID) run scoreboard players set #Bool invs 1
$execute unless data storage invs:inventory_with_id Inventory."$(UUID0), $(UUID1), $(UUID2), $(UUID3)".$(ID) run scoreboard players set #Bool invs 0
