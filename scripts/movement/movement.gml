// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ControlSetup()
{
	bufferTime = 5;
	
	jumpKeyBuffered = 0;
	jumpKeyBufferTimer = 0;
}


function GetControls()
{
	//Directional Inputs
	rightKey = keyboard_check(vk_right) + keyboard_check(ord("D"));
	rightKey = clamp(rightKey, 0 , 1);

	leftKey = keyboard_check(vk_left) + keyboard_check(ord("A"));
	leftKey = clamp(leftKey, 0 , 1);
	
	downKey = keyboard_check(vk_down) + keyboard_check(ord("S"));
	downKey = clamp(downKey, 0 , 1);

	//Action inputs
	jumpKeyPressed = keyboard_check_pressed(ord("Z")) + keyboard_check_pressed(vk_space);
	jumpKeyPressed = clamp(jumpKeyPressed, 0, 1);
	
	jumpKey = keyboard_check(vk_up) + keyboard_check(ord("Z"));
	jumpKey = clamp(jumpKey, 0, 1);
	
	runKey = keyboard_check(ord("C")) + keyboard_check(ord("H"))
	runKey = clamp(runKey, 0, 1);
	
	//jump buffering
	
	if jumpKeyPressed
	{
		jumpKeyBufferTimer = bufferTime;
	}
	if jumpKeyBufferTimer > 0
	{
		jumpKeyBuffered = 1;
		jumpKeyBufferTimer--;
	}else {
		jumpKeyBuffered = 0;
	}
	
}