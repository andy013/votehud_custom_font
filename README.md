# votehud_custom_font

A custom HUD mod for TF2 to help identify bots. 

## What is this?

A small mod for TF2 that uses a custom font to draw many of the invisible characters that bots use in their name. 

Examples:
 
![](https://i.imgur.com/4k5lIGO.png)    ![](https://i.imgur.com/9ztja2b.png)   ![](https://i.imgur.com/fspDpyY.png) 


### How does it work?

The mod uses a custom edited version of the Noto Mono font. Most characters outside of the normal English alphabet and drawn as error rectangles.
An empty rectangle is just a regular character, a filled in rectangle is a character that could be drawn behind another character.

The UI also draws the usernames in a regular font so you can see what they would appear like to most other players and tell apart different unicode characters. 


### Install instructions

Copy the files from [this repo](https://github.com/andy013/votehud_custom_font/files/6268634/votehud_custom_font.zip) to a folder named `votehud_custom_font` in your `tf/custom` directory. E.g.

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

The mod currently only works if your steam language is set to English. I may convert it over to other languages if there is enough demand. 

The font does not work correctly if used in the chat box (it still works but some characters will still be invisible).  It was designed for Label VGUI elements. 
Right now, this mod just uses it within the voting panels. 

This mod was designed for Windows. It is untested on Mac and Linux. 


## Is this compatible with other custom HUDS?

Only if you are willing to edit the files manually. 

Unfortunately in order to import a custom font into TF2 you need to modify the `clientscheme.res` file 
which is used by other custom HUDs. 

## I am the creator of a custom HUD, can I use the font from this mod in my HUD?

Yes. Just make sure you set the range value to `0x0021 0xFFFF` for your language (as set in steam) in order for the font to work correctly. The font wont display correctly if installed as a system font. It has to be imported in the clientscheme.res file E.g.

``` 
clientscheme.res

CustomFontFiles
{
...
	"8" 
	{
		"font" "resource/CustomNotoMono.otf"
		"name" "CustomNotoMono"
		"english" 
		{
			"range" "0x021 0xFFFF"     <------ Must be set like this
		}
	}
}
```

