if startEasing == true
{
	if time< duration
	{
		move = ease_in(time, start, dest - start, duration);
		time++
		if time >= duration 
		{
			ai = "retract"; startEasing = false;
		}	
	}
}


//ai state machine

if ai == "prepare attack"
{
	delayAttackTimer--;
	if delayAttackTimer < 0
	{
		delayAttackTimer = delayAttackTime;ai = "attack"
	}
}

//ease function go move
if ai == "attack"
{
	startEasing = true;
}

if ai == "retract"
{
move += 0.5
if y > start_Y
{
	y = start_Y; ai = "reset trap"; move = 0;
}
}

if ai == "reset trap"
{
	reloadTrapTimer--;
	if reloadTrapTimer < 0
	{
		//reset everything
		start = 0;
		dest = -48;
		duration = 15;
		time = 0;
		move = 0;
		
		ai = "idle";
	}
}


y = start_Y + move;