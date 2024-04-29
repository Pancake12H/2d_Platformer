///@desc hit state
//push force
movePush()
xspdPush = lerp(xspdPush, 0, .1);
yspdPush = lerp(yspdPush, 0, .1);

if point_distance(0, 0, xspdPush, yspdPush) < 1
{
	state_ = MOVEMENT_;
}



