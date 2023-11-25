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

# add item to inventory cache
$data remove storage invs:cache Cache.Inventory[{Slot:$(Slot)b}]
$data modify storage invs:cache Cache.Inventory append from storage invs:inventory Inventory."$(UUID0), $(UUID1), $(UUID2), $(UUID3)"."$(ID)"[{Slot:$(Slot)b}]

# continue loop if further slots present
data remove storage invs:cache Cache.Slot[0]
execute if data storage invs:cache Cache.Slot[0] run data modify storage invs:cache Cache.Arguments.Slot set from storage invs:cache Cache.Slot[0]
execute if data storage invs:cache Cache.Slot[0] run function invs:src/get/inventory_slot_loop with storage invs:cache Cache.Arguments
