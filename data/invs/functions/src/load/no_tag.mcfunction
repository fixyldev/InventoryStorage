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

# hotbar
execute if score #Slot invs matches 0..8 run function invs:src/load/no_tag/hotbar with storage invs:cache Cache.Item
execute if score #Slot invs matches 0..8 run return 1

# inventory
execute if score #Slot invs matches 9..35 run scoreboard players operation #Slot invs -= #9 invs
execute if score #Slot invs matches 0..26 store result storage invs:cache Cache.Item.Slot byte 1 run scoreboard players get #Slot invs
execute if score #Slot invs matches 0..26 run function invs:src/load/no_tag/inventory with storage invs:cache Cache.Item

# offhand
execute if score #Slot invs matches -106 run function invs:src/load/no_tag/offhand with storage invs:cache Cache.Item

# head
execute if score #Slot invs matches 103 run function invs:src/load/no_tag/head with storage invs:cache Cache.Item

# chest
execute if score #Slot invs matches 102 run function invs:src/load/no_tag/chest with storage invs:cache Cache.Item

# legs
execute if score #Slot invs matches 101 run function invs:src/load/no_tag/legs with storage invs:cache Cache.Item

# feet
execute if score #Slot invs matches 100 run function invs:src/load/no_tag/feet with storage invs:cache Cache.Item
