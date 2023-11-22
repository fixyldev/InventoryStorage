##################################################################################
# MIT License
#
# Copyright (c) 2023 fixyldev
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
##################################################################################

# get item from inventory
data remove storage invs:cache Cache.Item
$data modify storage invs:cache Cache.Item set from storage invs:inventory Inventory."$(UUID0), $(UUID1), $(UUID2), $(UUID3)"."$(ID)"[{Slot:$(Slot)b}]

# store item slot
execute store result score #Slot invs run data get storage invs:cache Cache.Item.Slot

# distinguish between items with and without tag
execute if data storage invs:cache Cache.Item.tag run function invs:src/load/tag
execute unless data storage invs:cache Cache.Item.tag run function invs:src/load/no_tag

# continue loop if further slots present
data remove storage invs:cache Cache.Slot[0]
execute if data storage invs:cache Cache.Slot[0] run data modify storage invs:cache Cache.Arguments.Slot set from storage invs:cache Cache.Slot[0]
execute if data storage invs:cache Cache.Slot[0] run function invs:src/load/inventory_slot_loop with storage invs:cache Cache.Arguments
