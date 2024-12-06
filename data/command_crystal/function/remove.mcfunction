### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# function #command_crystal:remove {limit:1}

$execute as @n[type=interaction,tag=CommandCrystal,limit=$(limit)] on passengers run kill @s
$kill @n[type=interaction,tag=CommandCrystal,limit=$(limit)]
