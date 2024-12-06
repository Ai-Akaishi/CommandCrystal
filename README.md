# CommandCrystal

[日本語で読む](README_ja.md)

A data pack that lets you create mysterious crystals capable of executing any command when touched.  
![Sample Image](sample_image.png)

## Tested Versions

- 1.21.4

## How to Use

Place this data pack in the `datapacks` folder of your world.

### How to Create a Crystal

You can create a crystal using the following command:

`function #command_crystal:place {block:<block name>,name:<crystal name (text component)>,left_click:<left-click action>,right_click:<right-click action>}`

- **`<block name>`**: Specifies the block name used for the crystal's appearance.  
  Example: `block:"diamond_block"`
- **`<crystal name>`**: Specifies the name displayed when hovering over the crystal.  
  Use text component format.  
  Example: `name:'"Diamond Machine"'`  
  Example: `name:'{"text":"Diamond Machine","color":"aqua"}'`
- **`<left-click action>`**: Specifies the action executed when the crystal is left-clicked.  
  Three types of commands can be specified: `before_command`, `command`, and `after_command`.  
  - **`before_command`**: A command executed **before** the main command by the **crystal** at the **crystal's position**.
  - **`command`**: The main command executed by the **player** at the **crystal's position**.
  - **`after_command`**: A command executed **after** the main command by the **crystal** at the **crystal's position**.
  If no action is needed, use `{}`.  
- **`<right-click action>`**: Specifies the action executed when the crystal is right-clicked.  
  The specification method is the same as `<left-click action>`.  
  Example: `right_click:{command:"give @s diamond"}`  
  Example: `right_click:{command:"give @s diamond",after_command:"playsound minecraft:ui.toast.challenge_complete master @a"}`  
  Example: `right_click:{}`  

```mcfunction
function #command_crystal:place {block:"diamond_block",name:'"Diamond Machine"',left_click:{before_command:"say Take this!",command:"give @s diamond",after_command:"playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2"},right_click:{after_command:"me :If you want diamonds, hit me!"}}
```

### How to Remove a Crystal

You can remove crystals using the following command:

`function #command_crystal:remove {limit:<number of crystals to remove>}`

- **`<number of crystals to remove>`**: Specifies the number of crystals to remove, with a minimum of 1.  
  The closest crystals will be removed first.  
  Example: `limit:5`

```mcfunction
function #command_crystal:remove {limit:1}
```

## Contact

<https://twitter.com/AiAkaishi>

## License

These codes are released under the MIT License. See the LICENSE file for details.
