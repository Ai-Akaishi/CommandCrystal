### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# function command_crystal:place {block:"cyan_stained_glass",name:'"資源ポータル"',left_click:{before_command:"",command:"",after_command:""},right_click:{before_command:"",command:"",after_command:""}}

$execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:interaction ~ ~ ~ {height:2f,CustomName:'$(name)',Tags:["CommandCrystal"],Passengers:[\
	{id:item_display,billboard:"vertical",item:{id:"$(block)",count:1b,components:{enchantments:{levels:{"minecraft:fortune":1}},custom_data:{left_click:$(left_click),right_click:$(right_click)}}},transformation:{right_rotation:[0.32505758367, 0.0, -0.32505758367, 0.88807383397],scale:[0.81649658092, 1.15470053838, 0.81649658092],left_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f]},Tags:["CommandCrystalData"]},\
	{id:item_display,billboard:"vertical",item:{id:"$(block)",count:1b,components:{enchantments:{levels:{"minecraft:fortune":1}}}},transformation:{right_rotation:[-0.32505758367, 0.0, 0.32505758367, 0.88807383397],scale:[0.81649658092, 1.15470053838, 0.81649658092],left_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f]}}]}
