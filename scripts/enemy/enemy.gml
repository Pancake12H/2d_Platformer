// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@arg frame
function basicCollisons(){
	if place_meeting(x + xspd, y, oWall)
	{
		while !place_meeting(x + sign(xspd), y, oWall)
		{
			x += sign(xspd);
		}
	}
	x += xspd;
	
	if place_meeting(x, y + yspd, oWall)
	{
		while !place_meeting(x, y + sign(yspd), oWall)
		{
			y += sign(yspd);
		}
	    yspd = 0;
	}
	y += yspd;
	
}

function movePush(){
	if place_meeting(x + xspdPush, y, oWall)
	{
		while !place_meeting(x + sign(xspdPush), y, oWall)
		{
			x += sign(xspdPush);
		}
		xspdPush = 0;
	}
	x += xspdPush;
	
	if place_meeting(x, y + yspdPush, oWall)
	{
		while !place_meeting(x, y + sign(yspdPush), oWall)
		{
			y += sign(yspdPush);
		}
	    yspdPush = 0;
	}
	y += yspdPush;
}
	
function animationHitFrame(){
	var frame = argument0;
	
	return image_index == frame;
}
	
function EnemyStateIdle(){
	yspd = xspd + grv;
	//horizontal collision
	if (place_meeting(x+xspd,y,oWall))
	{
		while (!place_meeting(x+sign(xspd),y,oWall))
		{
			x = x + sign(xspd);
		}
		xspd = -xspd;
	}
	x = x + xspd;

	//vertical collision
	if (place_meeting(x,y+yspd,oWall))
	{
		while (!place_meeting(x,y+sign(yspd),oWall))
		{
			y = y + sign(yspd);
		}
		yspd = 0;
	}
	y = y + yspd;
	
		if distance_to_object(oPlayer) < distance
	{
		state = EnemyState.CHASE;
		sprite_index = sKnightWalk;
	}
}

function EnemyStateChase(){
	if instance_exists(oPlayer)
	{
		yspd = xspd + grv;
		//horizontal collision
		if (place_meeting(x+xspd,y,oWall))
		{
			while (!place_meeting(x+sign(xspd),y,oWall))
			{
				x = x + sign(xspd);
			}
			xspd = -xspd;
		}
		x = x + xspd;

		//vertical collision
		if (place_meeting(x,y+yspd,oWall))
		{
			while (!place_meeting(x,y+sign(yspd),oWall))
			{
				y = y + sign(yspd);
			}
			yspd = 0;
		}
	
		if (xspd != 0) image_xscale = sign(xspd)
	
		vir = sign(oPlayer.x - x);
		xspd = vir * 1.5;
	
		if distance_to_object(oPlayer) > distance
		{
			state = EnemyState.IDLE;
		}
		if distance_to_object(oPlayer) < 20
		{
			state = EnemyState.ATTACK;
		}
	}
}

function EnemyStateAttack(){
	if (image_index > image_number - 1)
	{
		state = EnemyState.IDLE;
	}
	var hitbox = instance_create_depth(x, y, depth, oAtkHitbox);
	hitbox.sprite_index = sprite_index;
	hitbox.image_xscale = image_xscale;
}