draw_set_halign(fa_center);
draw_set_font(font1);

//line spacing
var _gap = 40;

//draw items
var _size = array_length(menu[sub_menu]);
for(var i = 0; i < _size; i++)
{
	//reset color
	if i == index var _col = c_teal; else var _col = c_white;
	
	//is this selectable menu item or just text
	if is_array(menu[sub_menu][i])
	{
		//store menu array
		var _menu_arr = menu[sub_menu][i];
		
		//get map array
		var _map_arr = set[? _menu_arr[1]];
		
		//get the limit array, or choices array
		var _limits_arr = _map_arr[1];
		
		//do we show integer or text
		var _str1 = _menu_arr[0];
		if is_real(_limits_arr[0])
		{
			//integer to show
			var _str2 =  string(_map_arr[0]);
		}
		else
		{
			//string to show
			var _str2 = _limits_arr[_map_arr[0]];
		}
	}
	else
	{
		//draw string
		var _str1 = menu[sub_menu][i];
		var _str2 = "";
	}
	
	//set up y pos and text width
	//get struct for this entry
	var _stc = button_arr[sub_menu][i];
	_stc.y = menu_y_pos + _gap * i;
	
	//set different widths if are on array
	if _str2 == ""
	{
		_stc.wl = string_width(_str1)/2;
		_stc.wr = string_width(_str1)/2;
	}
	else
	{
	_stc.wl = string_width(_str1 + "");
	_stc.wr = string_width(_str2 + "");
	}
	
	//is mouse hovering over new entry
	var _hovering_hover_text = false;
	//should mouse control menu
	if mouse_y >= menu_y_pos && mouse_y <= menu_y_pos + _gap * _size
	{
		//check wich menu entry we are over
		if mouse_y > _stc.y && mouse_y < _stc.y + _stc.h
		{
			//check x pos
			if mouse_x > menu_x_pos - _stc.wl && mouse_x < menu_x_pos + _stc.wr
			{
				_col = c_teal;
				_hovering_hover_text = true;
			}
		}
	}
	//highlight current index
	if index == i _col = c_teal;
	
	//update the index with mouse position if this is selected text
	if _col = c_teal
	{
		//update index
		index = i;
		//are we clicking entry and over text
		if mouse_check_button_pressed(mb_left) && _hovering_hover_text
		{
			 //set menu select to true
			 var _select = true;
			 var _hmove = 0;
			 //if menu entry is array, allow movement
			 if is_array(menu[sub_menu][i])
			 {
				//increment the array depending on where we clicked
				if mouse_x < menu_x_pos - _stc.wl + click_area_w _hmove = -1;
				else if mouse_x > menu_x_pos - click_area_w && mouse_x < menu_x_pos _hmove = +1;
			 }
			 process_menu(_select, _hmove);
			 //update the size as we could be a new submenu
			 _size = array_length(menu[sub_menu]);
			 
		}
	}
	//draw the text
	if _str2 == ""
	{
		 //simple entry
		draw_set_halign(fa_center);
		draw_text_color(menu_x_pos, menu_y_pos + _gap * i, _str1 + "", _col, _col, _col, _col, 1);
	}
	else
	{
		//array entry
		draw_set_halign(fa_right);
		draw_text_color(menu_x_pos, menu_y_pos + _gap * i, _str1 + "", _col, _col, _col, _col, 1);
		draw_set_halign(fa_left);
		draw_text_color(menu_x_pos, menu_y_pos + _gap * i, "" + _str2, _col, _col, _col, _col, 1);
	}
	
	
}




