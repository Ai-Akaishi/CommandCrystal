### 右クリックしたとき
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

tag @s add InvokerPlayer
	execute as @e[type=interaction,tag=CommandCrystal,sort=nearest] if function command_crystal:is_interacted at @s run function command_crystal:right_command/
tag @s remove InvokerPlayer

advancement revoke @s only command_crystal:right_click
