## 右クリックの時のコマンド呼び出し
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage command_crystal: macro_args set value {before_command:"function command_crystal:noop",command:"function command_crystal:noop", after_command:"function command_crystal:noop"}
execute on passengers if entity @s[tag=CommandCrystalData] run data modify storage command_crystal: macro_args merge from entity @s item.components."minecraft:custom_data".right_click

function command_crystal:right_command/invoke with storage command_crystal: macro_args

data remove entity @s interaction
