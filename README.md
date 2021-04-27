# votehud_custom_font

A custom HUD mod for TF2 to help identify bots. 

## What is this?

A small mod for TF2 that uses a custom font to draw many of the invisible characters that bots use in their name. 

Examples:
 
![](https://i.imgur.com/ygqLt7u.png)    ![](https://i.imgur.com/bEfX4pa.png)   ![](https://i.imgur.com/PQvlaN6.png) ![](https://i.imgur.com/mctfswo.png) 


### How does it work?

The mod uses a custom edited version of the Noto Mono font. Most characters outside of the normal English alphabet are drawn as error rectangles.
An empty rectangle is just a regular character, a filled in rectangle is a character that could be drawn behind another character. Cyrillic / Russian characters are drawn with an underline. 

The UI also draws the usernames in a regular font so you can see what they would appear like to most other players and tell apart different Unicode characters. 

### Why do bots have strange characters in their names?

Normally if you try and copy someone else's name, the server will add a number in parenthesis to the beginning like this `(1)Andy`. 
The bots get around this by using invisible control characters or characters from foreign languages that don't display correctly in the source engine.
This mod tries to display all of these characters to help players determine the difference between a player and a bot who is trying to imitate them. 

To clarify, **just because you see a box in someone's name does not mean they are a bot**. There are many different Unicode characters that TF2 players legitimately use in their names. These will all show up as boxes in my font. For example, if you use Chinese symbols in your name. What the font allows you to do is see most of the invisible characters and compare a persons name to a bot that copied them. If someone has the exact same name as someone else but they have an invisible character added, this should allow you to see that character and make a decision as to whether it is a bot copy or not.

### Will this mod get me VAC banned?

No. This is just a custom HUD which is allowed by Valve. It doesn't modify the code of the game in any way. It simply changes the font and layout of the vote panels. It will also work on all servers even if they have sv_pure 2 enabled. 

## Is this compatible with other custom HUDS?

Yes, see the install instructions below. 

## Install instructions

Copy the files from [this repo](https://github.com/andy013/votehud_custom_font/releases/) to a folder named `zzz_votehud_custom_font` in your `tf/custom` directory. (the zzz makes sure the mod loads after any custom HUD you have installed) E.g.

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
                        └───zzz_votehud_custom_font     <----- Folder must be named correctly
                            │
                            │   info.vdf      <------ Mod files here
			    │	README.md
                            └───resource
```

If you have a custom HUD installed there are a few more steps you need to do to complete the installation:

1. Go to your custom HUDs resource folder. It should be something like: 

	`C:\Program Files (x86)\Steam\steamapps\common\Team Fortress 2\tf\custom\<CUSTOM HUD NAME>\resource`

	In there you will find a file called `clientscheme.res`. Rename this file to `clientscheme_OLD.res`.

2. Go into the `ui` folder and look for `votehud.res`, if your HUD has this file then rename it to `votehud_OLD.res`. If your HUD doesn't have this file then just skip this step.

3. Go back to your resource folder and look for a file called `chat_<language>.txt`. Replace `<language>` with whatever language you have set in steam (e.g. for english look for `chat_english.txt`). If your HUD has this file, then you will need to copy some lines from the same file in `zzz_votehud_custom_font`. If your HUD doesn't have this file then you can skip this step.

	In the zzz_votehud_custom_font `chat_<language>.txt` file you will see a couple of block comments, one labelled `CUSTOM FONT MOD START` and another `CUSTOM FONT MOD END`. Copy all the text in between these 2 comments and paste it into your `chat_<language>.txt` file in your custom HUDs resource folder. In that file look for a line that says `"Tokens"` after that there should be an open curly brace `{`. Add a new line after this curly brace and paste the text that you copied from this mod there and save the file. 

If you have followed these steps correctly you should now see this mod being used for the voting panels. 

By default this mod will use a background colour as defined by your custom HUD. If you would rather override this and use the default grey you can edit the `votehud.res` file in this mods `resource\ui` folder. Look for the two lines that start with `// "bgcolor_override"` and remove the 2 slashes to uncomment them. One of them will make the active vote panel have a grey background and the other will do the same for the vote creation panel. 



### Current Limitations

**The mod currently only works if your Steam language is set to one of the following:**

* **English**
* **Brazilian Portuguese**
* **French**
* **German**
* **Italian**
* **Polish**
* **Russian**
* **Spanish** 

I may convert it over to other languages if there is enough demand. Please create an issue if you wish to request support for a langauge not listed here.

The font does not work correctly if used in the chat box (it still works but some characters will still be invisible).  It was designed for Label VGUI elements. 
Right now, this mod just uses it within the voting panels. 

This mod was designed for Windows. It is untested on Mac and Linux. 

## I am the creator of a custom HUD, can I use the font from this mod in my HUD?

Yes. Just make sure you set the range value to `0x0021 0xFFFF` for your language (as set in steam) in order for the font to work correctly. The font wont display correctly if installed as a system font. It has to be imported in the clientscheme.res file.

