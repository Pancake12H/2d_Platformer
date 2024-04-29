// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function process_menu(_select, _hmove)
{
	if _select || (is_array(menu[sub_menu][index]) && (_hmove != 0	))
	{
		switch (sub_menu)
		{
			case MAIN: // main menu
				switch(index)
				{
				case 0:
					//start
					SlideTransition(TRANS_MODE.NEXT)
					audio_play_sound(SoundMenu, 50, false);
				break;
				case 1:
					//settings
					sub_menu = SETTINGS;
					index = 0;
					audio_play_sound(SoundMenu, 50, false);
				break;
				case 2:
					//Exit
					game_end();
					audio_play_sound(SoundMenu, 50, false);
				break;
				}
			break;
			case SETTINGS: //Options
				switch(index)
				{
				case 0:
					//Sound
					change_menu(_hmove, "sound");
					audio_master_gain(global.dsm_settings[? "sound"][0]/10);
					audio_play_sound(SoundMenu, 50, false);
				break;
				case 1:
					//Music
					change_menu(_hmove, "music");
					audio_play_sound(SoundMenu, 50, false);
				break;
				case 2:
					//Subtitles
					change_menu(_hmove, "subtitles");
					audio_play_sound(SoundMenu, 50, false);
				break;
				case 3:
					//Text Speed
					change_menu(_hmove, "text_speed");
					audio_play_sound(SoundMenu, 50, false);
				break;
				case 4:
					//Back
					sub_menu = 0;
					index = 1;
					audio_play_sound(SoundMenu, 50, false);
				break;
				}
			break;
		}
	}
}

function button(_y, _wl, _wr, _h) constructor
{
	//clicking areas and selection position
	y = _y;
	wl = _wl;
	wr = _wr;
	h = _h;
}

function change_menu(_move, _key)
{
	//get map array
	var _map_arr = set[? _key]
	//get limits array
	var _limits_arr = _map_arr[1];
	
	if is_real(_limits_arr[0])
	{
		var _min = _limits_arr[0];
		var _max = _limits_arr[1];
	}
	else
	{
		var _min = 0;
		var _max = array_length(_limits_arr) -1;
	}
	
	//move the selection
	_map_arr[@ 0] = clamp(_move + _map_arr[0], _min, _max);
}








