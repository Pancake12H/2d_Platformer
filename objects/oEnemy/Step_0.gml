//move towards player
if instance_exists(oPlayer)
{
	image_xscale = sign(oPlayer.x - x);
	event_user(state_);
}
