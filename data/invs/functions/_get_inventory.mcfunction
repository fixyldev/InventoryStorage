# cancel if executing entity is non-player
execute if entity @s[type=!minecraft:player] run return 0

function invs:src/get_uuid
$data modify storage invs:cache Cache.Arguments.Storage set value $(Storage)
$data modify storage invs:cache Cache.Arguments.Path set value $(Path)
function invs:src/get_inventory with storage invs:cache Cache.Arguments

return 1
