///@desc movement state

//Move towards player
var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);

basicCollisons();


//push force
movePush();
if !place_meeting(x, y, oEnemy) || !place_meeting(x, y, oEnemy2)
{
	xspdPush = lerp(xspdPush, 0, .1);
	yspdPush = lerp(yspdPush, 0, .1);
}

//death
if currentHp <= 0
{
	instance_destroy();
}

if distance_to_object(oPlayer) < 200
{
state_ = ATTACK_;
}

