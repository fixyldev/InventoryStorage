# InventoryStorage
[![Actively Developed](https://img.shields.io/badge/status-actively_developed-brightgreen?style=for-the-badge)](https://github.com/fixyldev/fixyldev/blob/main/STATUS.md#actively-developed)
[![GitHub](https://img.shields.io/github/downloads/fixyldev/InventoryStorage/total?style=for-the-badge&logo=github&labelColor=gray&label)]()
[![Release](https://img.shields.io/github/v/release/fixyldev/InventoryStorage?style=for-the-badge)](https://github.com/fixyldev/InventoryStorage/releases)
[![License](https://img.shields.io/github/license/fixyldev/InventoryStorage?style=for-the-badge)](LICENSE)

## 🗒️ Description
InventoryStorage is a Minecraft Java Edition Datapack for storing copies of player inventories.

## ⌨️ Commands
| Function                         | Description                                                                                                                                          | Arguments | Return Values |
|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|-----------|---------------|
| `invs:_is_inventory`             | Checks whether an inventory of the executing player is currently being stored.<br>Empty inventories will not be ignored.                             | -         | 0, 1          |
| `invs:_is_inventory_with_id`     | Checks whether an inventory with the specified id of the executing player is currently being stored.<br>Empty inventories will not be ignored.       | ID        | 0, 1          |
| `invs:_load_inventory`           | Loads the currently stored inventory of the executing player.<br>Ignores if the player has no inventory stored.                                      | -         | 0, 1          |
| `invs:_load_inventory_with_id`   | Loads the currently stored inventory with the specified id of the executing player.<br>Ignores if the player has no inventory with that id stored.   | ID        | 0, 1          |
| `invs:_remove_inventory`         | Removes the currently stored inventory of the executing player.<br>Ignores if the player has no inventory stored.                                    | -         | 0, 1          |
| `invs:_remove_inventory_with_id` | Removes the currently stored inventory with the specified id of the executing player.<br>Ignores if the player has no inventory with that id stored. | ID        | 0, 1          |
| `invs:_store_inventory`          | Stores the current inventory of the executing player.<br>Empty inventories will not be ignored.                                                      | -         | 0, 1          |
| `invs:_store_inventory_with_id`  | Stores the current inventory of the executing player using the specified id.<br>Empty inventories will not be ignored.                               | ID        | 0, 1          |
| `invs:_uninstall`                | Removes all scoreboards and data storages.                                                                                                           | -         | 1             |
