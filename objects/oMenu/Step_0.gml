//get input
var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _select = keyboard_check_pressed(vk_enter);
var _left = keyboard_check_pressed(vk_left);
var _right = keyboard_check_pressed(vk_right);
var _left_held = keyboard_check(vk_left);
var _right_held = keyboard_check(vk_right);

//if holding key down
var _repeat_spd = 8;
var _repeat_delay = 25;

//holding right
if _right time_held_right = _repeat_delay;
if time_held_right > 0
{
	time_held_right--;
	if time_held_right == 0 && _right_held
	{
		_right = true;
		time_held_right = _repeat_spd;
	}
}

//holding left
if _right time_held_left = _repeat_delay;
if time_held_left > 0
{
	time_held_left--;
	if time_held_left == 0 && _left_held
	{
		_left = true;
		time_held_left = _repeat_spd;
	}
}


var _move = _down - _up;
var _hmove = _right - _left;
if _move != 0
{
	//move index
	index += _move;
	
	//clamp values
	var _size = array_length(menu [sub_menu]);
	if index < 0 index = _size - 1; //at start, loop to menu end
	else if index >= _size index = 0; //at end, loop to menu start
}


process_menu(_select, _hmove);
