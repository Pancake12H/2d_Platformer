///@desc attack state
if instance_exists(oPlayer)
{
	if distance_to_object(oPlayer) >= 48
	{
		state_ = MOVEMENT_;
	}

	//create bullet
	if alarm[0] <= 0 && instance_exists(oPlayer)
	{
		image_xscale = sign(oPlayer.x - x);
		image_yscale = sign(oPlayer.y - y);
		var dir = point_direction(x, y, oPlayer.x, oPlayer.y - oPlayer.sprite_height/2);
		var x_offset = lengthdir_x(20, dir);
		var y_offset = lengthdir_y(20, dir);
		
		var bullet = instance_create_layer(x + x_offset, y + y_offset, "Instances", oEnemyBullet);
		bullet.direction = dir;
		alarm[0] = bulletCooldown;
	}
}
