//ease function
if(time < duration)
{
	swingAngle = ease_in_and_out(time, start, dest-start, duration);
	
	time++;
}
else
{
	var tempStart = start;
	start = dest;
	dest = tempStart;
	time = 0;
}


//action
image_angle = swingAngle -60;
