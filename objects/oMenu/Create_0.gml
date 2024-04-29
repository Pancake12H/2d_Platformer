//macros
#macro MAIN		    0
#macro SETTINGS		1   
#macro	TOTAL		2
global.dsm_settings = ds_map_create();
#macro set			global.dsm_settings

ds_map_add(set, "sound", [5, [0,10]]);
ds_map_add(set, "music", [5, [0,10]]);
ds_map_add(set, "subtitles", [0, ["On","Off"]]);
ds_map_add(set, "text_speed", [1, ["Slow","Normal", "Fast", "Instant"]]);

//if holding key
time_held_right = 0;
time_held_left = 0;


//main menu submenu 0
menu[MAIN][0] = "Start";
menu[MAIN][1] = "Settings";
menu[MAIN][2] = "Exit";

//options submenu 1
menu[SETTINGS][0] = ["< Sound FX >", "sound"];
menu[SETTINGS][1] = ["< Music >", "music"];
menu[SETTINGS][2] = ["< Subtitles >", "subtitles"];
menu[SETTINGS][3] = ["<Text Speed >", "text_speed"];
menu[SETTINGS][4] = "Back";

index = 0; //menu index pos
sub_menu = 0; //submenu index pos

menu_x_pos = room_width * .5; //x pos menu
menu_y_pos = room_height * .2; //y pos menu
click_area_w = 35; // wich area can click

//init a button struct for each menu entry
var _h = 40;
for(var a = 0; a< TOTAL; a++)
{
	for (var b = 0; b < array_length(menu[a]); b++)
	{
		button_arr[a][b] = new button(0, room_width/2, room_width/2, _h);
	}
}
