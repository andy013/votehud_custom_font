#base "votehud_OLD.res"

"Resource/UI/VoteHud.res"
{	
	"VoteActive"
	{
		"ControlName"	"EditablePanel"
		"fieldName"		"VoteActive"
		"xpos"			"10"
		"ypos"			"r340"
		"wide"			"150"
		"tall"			"170"
		"visible"		"0"
		"enabled"		"1"
		// "bgcolor_override"	"52 48 45 255"  // Remove 2 slashes from beginning of this line to force gray background in active vote panel.
		
		"Header"		// Vote caller - large custom font
		{
			"ControlName"	"Label"
			"fieldName"		"Header"
			"xpos"			"10"
			"ypos"			"5"
			"wide"			"134"
			"tall"			"25"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		"%header%"
			"textAlignment"	"west"
			"dulltext"		"0"
			"brighttext"	"0"
			"font"			"CustomNotoMonoMedium"   
			"wrap"			"1"
			"fgcolor_override"	"128 128 128 255"
			"AllCaps"			"0"
		}

		"Header_small"		// Vote caller - small regular font
		{
			"ControlName"	"Label"
			"fieldName"		"Header_small"
			"xpos"			"10"
			"ypos"			"29"
			"wide"			"134"
			"tall"			"20"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		"%header%"
			"textAlignment"	"north-west"
			"dulltext"		"0"
			"brighttext"	"0"
			"font"			"CustomVerdanaSmall"   
			"wrap"			"1"
			"fgcolor_override"	"128 128 128 255"
			"AllCaps"			"0"
		}

		"Wants_to_vote"
		{
			"ControlName"	"Label"
			"fieldName"		"Wants_to_vote"
			"xpos"			"10"
			"ypos"			"41"
			"wide"			"134"
			"tall"			"20"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		"#TF_custom_font_mod_wants_to_vote"
			"textAlignment"	"north-west"
			"dulltext"		"0"
			"brighttext"	"0"
			"font"			"CustomVerdanaSmall"   
			"wrap"			"1"
			"fgcolor_override"	"128 128 128 255"
		}
		
		"Issue" 			// Kick:
		{
			"ControlName"	"Label"
			"fieldName"		"Issue"
			"xpos"			"10"
			"ypos"			"48"
			"wide"			"134"
			"tall"			"20"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		"%voteissue%"
			"textAlignment"	"north-west"
			"dulltext"		"0"
			"brighttext"	"0"
			"font"			"CustomVerdanaSmall"  
			"fgcolor_override"	"128 128 128 255"
			"wrap"			"1"
			"noshortcutsyntax" "1"
			"AllCaps"			"0"
		}

		"Kick_name_large" 			// Player to be kicked name - large custom font
		{
			"ControlName"	"Label"
			"fieldName"		"Kick_name_large"
			"xpos"			"10"
			"ypos"			"-123"
			"wide"			"134"
			"tall"			"220"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		"%voteissue%"
			"textAlignment"	"north-west"
			"dulltext"		"0"
			"brighttext"	"0"
			"font"			"CustomNotoMonoMedium"  
			"fgcolor_override"	"255 255 255 255"
			"wrap"			"1"
			"noshortcutsyntax" "1"
			"AllCaps"			"0"
		}

		"Kick_name_small" 			// Player to be kicked name - small regular font
		{
			"ControlName"	"Label"
			"fieldName"		"Kick_name_small"
			"xpos"			"10"
			"ypos"			"79"
			"wide"			"134"
			"tall"			"27"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		"%voteissue%"
			"textAlignment"	"west"
			"dulltext"		"0"
			"brighttext"	"0"
			"font"			"CustomVerdanaSmall"  
			"fgcolor_override"	"255 255 255 255"
			"wrap"			"1"
			"noshortcutsyntax" "1"
			"AllCaps"			"0"
		}

		"Kick_reason" 			// Kick reason  (or other vote issue strings)
		{
			"ControlName"	"Label"
			"fieldName"		"Kick_reason"
			"xpos"			"10"
			"ypos"			"69"
			"wide"			"134"
			"tall"			"30"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		"%voteissue%"
			"textAlignment"	"south-west"
			"dulltext"		"0"
			"brighttext"	"0"
			"font"			"CustomVerdanaSmall"  
			"fgcolor_override"	"255 255 255 255"
			"wrap"			"1"
			"noshortcutsyntax" "1"
		}

		"TargetAvatarImage"
		{
			"ControlName"	"CAvatarImagePanel"
			"fieldName"		"TargetAvatarImage"
			"xpos"			"10"
			"ypos"			"23"
			"wide"			"16"
			"tall"			"16"
			"visible"		"0"
			"enabled"		"1"
			"image"			""
			"scaleImage"	"1"	
			"color_outline"	"52 48 45 255"
		}
		
		// divider
		"Divider"
		{
			"ControlName"	"ImagePanel"
			"fieldName"		"Divider"
			"xpos"			"10"
			"ypos"			"100"
			"wide"			"130"
			"tall"			"1"
			"fillcolor"		"128 128 128 255"
			"zpos"			"0"
		}
		
		// Temp UI
		
		"LabelOption1"
		{
			"ControlName"	"Label"
			"fieldName"		"LabelOption1"
			"xpos"			"10"
			"ypos"			"100"
			"wide"			"130"
			"tall"			"16"
			"zpos"			"2"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		""
			"textAlignment"	"left"
			"dulltext"		"0"
			"brighttext"	"0"
			"font"			"ScoreboardVerySmall"
			"fgcolor_override"	"255 255 255 255"
		}
		
		"Option1Background_Selected"
		{
			"ControlName"	"ImagePanel"
			"fieldName"		"Option1Background_Selected"
			"xpos"			"8"
			"ypos"			"100"
			"wide"			"132"
			"tall"			"16"
			"zpos"			"1"
			"fillcolor"		"88 119 140 180"
			"visible"		"1"
			"paintborder"	"1"
			"border"		"CustomCyanBorderThick"

		}
		
		"Option1CountLabel"
		{
			"ControlName"	"Label"
			"fieldName"		"Option1CountLabel"
			"xpos"			"28"
			"ypos"			"147"
			"wide"			"16"
			"tall"			"16"
			"zpos"			"2"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		"Yes"
			"textAlignment"	"center"
			"dulltext"		"0"
			"brighttext"	"0"
			"font"			"ScoreboardSmall"
			"fgcolor_override"	"255 255 255 255"
		}
		
		"LabelOption2"
		{
			"ControlName"	"Label"
			"fieldName"		"LabelOption2"
			"xpos"			"10"
			"ypos"			"113"
			"wide"			"130"
			"tall"			"16"
			"zpos"			"2"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		""
			"textAlignment"	"left"
			"dulltext"		"0"
			"brighttext"	"0"
			"font"			"ScoreboardVerySmall"
			"fgcolor_override"	"255 255 255 255"
		}
		
		"Option2Background_Selected"
		{
			"ControlName"	"ImagePanel"
			"fieldName"		"Option2Background_Selected"
			"xpos"			"10"
			"ypos"			"113"
			"wide"			"132"
			"tall"			"16"
			"zpos"			"1"
			"fillcolor"		"88 119 140 180"
			"visible"		"1"
			"paintborder"	"1"
			"border"		"CustomCyanBorderThick"
		}
		
		"Option2CountLabel"
		{
			"ControlName"	"Label"
			"fieldName"		"Option2CountLabel"
			"xpos"			"74"
			"ypos"			"147"
			"wide"			"16"
			"tall"			"16"
			"zpos"			"2"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		"No"
			"textAlignment"	"center"
			"dulltext"		"0"
			"brighttext"	"0"
			"font"			"ScoreboardSmall"
			"fgcolor_override"	"255 255 255 255"
		}
		
		"LabelOption3"
		{
			"ControlName"	"Label"
			"fieldName"		"LabelOption3"
			"xpos"			"10"
			"ypos"			"126"
			"wide"			"130"
			"tall"			"16"
			"zpos"			"2"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		""
			"textAlignment"	"left"
			"dulltext"		"0"
			"brighttext"	"0"
			"font"			"ScoreboardVerySmall"
			"fgcolor_override"	"255 255 255 255"
		}
		
		"Option3Background_Selected"
		{
			"ControlName"	"ImagePanel"
			"fieldName"		"Option3Background_Selected"
			"xpos"			"10"
			"ypos"			"126"
			"wide"			"132"
			"tall"			"16"
			"zpos"			"1"
			"fillcolor"		"88 119 140 180"
			"visible"		"0"
			"paintborder"	"1"
			"border"		"CustomCyanBorderThick"
		}
		
		"LabelOption4"
		{
			"ControlName"	"Label"
			"fieldName"		"LabelOption4"
			"xpos"			"10"
			"ypos"			"139"
			"wide"			"130"
			"tall"			"16"
			"zpos"			"2"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		""
			"textAlignment"	"left"
			"dulltext"		"0"
			"brighttext"	"0"
			"font"			"ScoreboardVerySmall"
			"fgcolor_override"	"255 255 255 255"
		}
		
		"Option4Background_Selected"
		{
			"ControlName"	"ImagePanel"
			"fieldName"		"Option4Background_Selected"
			"xpos"			"10"
			"ypos"			"139"
			"wide"			"132"
			"tall"			"16"
			"zpos"			"1"
			"fillcolor"		"88 119 140 180"
			"visible"		"0"
			"paintborder"	"1"
			"border"		"CustomCyanBorderThick"
		}
		
		"LabelOption5"
		{
			"ControlName"	"Label"
			"fieldName"		"LabelOption5"
			"xpos"			"10"
			"ypos"			"152"
			"wide"			"130"
			"tall"			"16"
			"zpos"			"2"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		""
			"textAlignment"	"left"
			"dulltext"		"0"
			"brighttext"	"0"
			"font"			"ScoreboardVerySmall"
			"fgcolor_override"	"255 255 255 255"
		}
		
		"Option5Background_Selected"
		{
			"ControlName"	"ImagePanel"
			"fieldName"		"Option5Background_Selected"
			"xpos"			"10"
			"ypos"			"152"
			"wide"			"132"
			"tall"			"16"
			"zpos"			"1"
			"fillcolor"		"88 119 140 180"
			"visible"		"0"
			"paintborder"	"1"
			"border"		"CustomCyanBorderThick"
		}
		
		// divider
		"Divider2"
		{
			"ControlName"	"ImagePanel"
			"fieldName"		"Divider2"
			"xpos"			"10"
			"ypos"			"134"
			"wide"			"130"
			"tall"			"1"
			"fillcolor"		"128 128 128 255"
			"zpos"			"0"
		}
		
		"VoteCountLabel"
		{
			"ControlName"	"Label"
			"fieldName"		"VoteCountLabel"
			"xpos"			"10"
			"ypos"			"136"
			"wide"			"140"
			"tall"			"20"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		"#GameUI_vote_current_vote_count"
			"textAlignment"	"north-west"
			"dulltext"		"0"
			"brighttext"	"0"
			"font"			"ScoreboardVerySmall"
			"fgcolor_override"	"128 128 128 255"
		}
		
		// vote bar
		"VoteBar"
		{
			"ControlName"	"Panel"
			"fieldName"		"VoteBar"
			"xpos"			"11"
			"ypos"			"147"
			"wide"			"130"
			"tall"			"18"
			"zpos"			"2"
			"visible"		"1"
			"enabled"		"1"			
			"box_size"		"16"
			"spacer"		"6"
			"box_inset"		"1"
			"yes_texture"	"vgui/hud/vote_yes"
			"no_texture"	"vgui/hud/vote_no"	
			"bgcolor_override"	"0 0 0 0"		
		}			
	}
	
	
	"VoteSetupDialog"
	{
		"ControlName"		"CVoteSetupDialog"
		"fieldName"			"VoteSetupDialog"
		"xpos"				"c-210"
		"ypos"				"c-150"
		"wide"				"420"
		"tall"				"310"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"settitlebarvisible"	"0"

		// "bgcolor_override"	"52 48 45 255" // Remove 2 slashes from beginning of this line to force gray background in vote setup list.

		"issue_width"		"180"		
		"issue_font"		"CustomNotoMonoSmall"
		
		"parameter_width"	"255"
									
		"VoteSetupList"
		{
			"ControlName"	"SectionedListPanel"
			"fieldName"		"VoteSetupList"
			"xpos"		"5"
			"ypos"		"38"
			"zpos"		"2"
			"wide"		"160"
			"tall"		"200"
			"pinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"	"0"
			"autoresize"	"0"
			"linespacing"	"16"
		}
		
		"VoteParameterList"
		{
			"ControlName"		"SectionedListPanel"
			"fieldName"		"VoteParameterList"
			"xpos"		"160"
			"ypos"		"38"
			"zpos"		"2"
			"wide"		"255"
			"tall"		"200"
			"pinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"	"0"
			"autoresize"	"0"
			"linespacing"	"16"
		}
			
	}
}
