$execute if data storage invs:inventory Inventory."$(UUID0), $(UUID1), $(UUID2), $(UUID3)" run scoreboard players set #Bool invs 1
$execute unless data storage invs:inventory Inventory."$(UUID0), $(UUID1), $(UUID2), $(UUID3)" run scoreboard players set #Bool invs 0
