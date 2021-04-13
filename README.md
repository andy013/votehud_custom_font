# votehud_custom_font

A custom HUD mod for TF2 to help identify bots. 

## What is this?

A small mod for TF2 that uses a custom font to draw many of the invisible characters that bots use in their name. 

Examples:
 
![](https://i.imgur.com/4k5lIGO.png)    ![](https://i.imgur.com/9ztja2b.png)   ![](https://i.imgur.com/fspDpyY.png) 


### How does it work?

The mod uses a custom edited version of the Noto Mono font. Most characters outside of the normal English alphabet are drawn as error rectangles.
An empty rectangle is just a regular character, a filled in rectangle is a character that could be drawn behind another character.

The UI also draws the usernames in a regular font so you can see what they would appear like to most other players and tell apart different Unicode characters. 

### Why do bots have strange characters in their names?

Normally if you try and copy someone else's name, the server will add a number in parenthesis to the beginning like this `(1)Andy`. 
The bots get around this by using invisible control characters or characters from foreign languages that don't display correctly in the source engine.
This mod tries to display all of these characters to help players determine the difference between a player and a bot who is trying to imitate them. 

To clarify, **just because you see a box in someone's name does not mean they are a bot**. There are many different Unicode characters that TF2 players legitimately use in their names. These will all show up as boxes in my font. For example, if you use Chinese symbols in your name. What the font allows you to do is see most of the invisible characters and compare a persons name to a bot that copied them. If someone has the exact same name as someone else but they have an invisible character added, this should allow you to see that character and make a decision as to whether it is a bot copy or not.

### Will this mod get me VAC banned?

No. This is just a custom HUD which is allowed by Valve. It doesn't modify the code of the game in any way. It simply changes the font and layout of the vote panels. It will also work on all servers even if they have sv_pure 2 enabled. 

## Install instructions

Copy the files from [this repo](https://github.com/andy013/votehud_custom_font/releases/) to a folder named `votehud_custom_font` in your `tf/custom` directory. E.g.

```
Program Files (x86)
│
└───Steam
    │
    └───steamapps
        │
        └───common
            │
            └───Team Fortress 2
                │
                └───tf
                    │
                    └───custom
                        │
                        └───votehud_custom_font     <----- Folder must be named correctly
                            │
                            │   info.vdf      <------ Mod files here
			    │	README.md
                            └───resource
```

### Current Limitations

**The mod currently only works if your Steam language is set to English or Brazilian.** I may convert it over to other languages if there is enough demand. 

The font does not work correctly if used in the chat box (it still works but some characters will still be invisible).  It was designed for Label VGUI elements. 
Right now, this mod just uses it within the voting panels. 

This mod was designed for Windows. It is untested on Mac and Linux. 

## I am the creator of a custom HUD, can I use the font from this mod in my HUD?

Yes. Just make sure you set the range value to `0x0021 0xFFFF` for your language (as set in steam) in order for the font to work correctly. The font wont display correctly if installed as a system font. It has to be imported in the clientscheme.res file.


## Is this compatible with other custom HUDS?

Yes, if you are willing to edit the files manually. 

Unfortunately in order to import a custom font into TF2 you need to modify the `clientscheme.res` file 
which is used by other custom HUDs. 

Here are instructions for importing this into another custom HUD:

First open the `clientscheme.res` file for this mod and ctrl+F search for `CUSTOM FONT MOD`.

Copy the 3 sections into the 3 appropriate sections of your custom HUDs `clientscheme.res` file, if your HUDs `clientscheme.res` file is split up you will need to find the right files to copy into.

You can also copy them directly from this README.

First, copy this into `Fonts`
```
		//
		//////////////////// CUSTOM FONT MOD //////////////////////////////
		//

		"CustomNotoMonoVerySmall"
		{
			"1"
			{
				"name" "CustomNotoMono"
				"tall" "8"
				"additive"	"0"
				"antialias" "1"
			}
		}
		"CustomNotoMonoMedium"
		{
			"1"
			{
				"name" "CustomNotoMono"
				"tall" "12"
				"additive"	"0"
				"antialias" "1"
			}
		}
		"CustomVerdanaSmall"
		{
			"1"
			{
				"name" "Verdana"
				"tall" "7"
				"additive"	"0"
				"antialias" "1"
			}
		}
```

Next copy this into the end of your `CustomFontFiles` (make sure you change the number 8 to however many custom fonts your HUD has. E.g. if your HUD currectly has 10, add this to the end and make it 11).

```
		//
		//////////////////// CUSTOM FONT MOD //////////////////////////////
		//

		"8" 
		{
			"font" "resource/CustomNotoMono.otf"
			"name" "CustomNotoMono"
			"english" 
			{
				"range" "0x021 0xFFFF" 
			}
			"brazilian"
			{
				"range" "0x021 0xFFFF" 
			}
		}
```

Lastly, copy this into `Borders`
```
	//////////////////// CUSTOM FONT MOD CYAN BORDER //////////////////////////////
	//
		CyanBorderThick 
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "15 255 255 255"
					"offset" "0 0"
				}
				"2"
				{
					"color" "15 255 255 255"
					"offset" "1 0"
				}
				"3"
				{
					"color" "15 255 255 255"
					"offset" "2 0"
				}
			}
			Right
			{
				"1"
				{
					"color" "15 255 255 255"
					"offset" "0 0"
				}
				"2"
				{
					"color" "15 255 255 255"
					"offset" "1 0"
				}
				"3"
				{
					"color" "15 255 255 255"
					"offset" "2 0"
				}
			}
			Top
			{
				"1"
				{
					"color" "15 255 255 255"
					"offset" "0 0"
				}
				"2"
				{
					"color" "15 255 255 255"
					"offset" "1 0"
				}
				"3"
				{
					"color" "15 255 255 255"
					"offset" "2 0"
				}
			}
			Bottom
			{
				"1"
				{
					"color" "15 255 255 255"
					"offset" "0 0"
				}
				"2"
				{
					"color" "15 255 255 255"
					"offset" "1 0"
				}
				"3"
				{
					"color" "15 255 255 255"
					"offset" "2 0"
				}
			}
		}
```

After doing this you should be able to copy and overwrite the rest of the files from this MOD into your custom HUDs directory. If your custom HUD has a `chat_english.txt` already you should be able to copy the lines from this mods `chat_english.txt` under the CUSTOM FONT MOD comment into that file. 



