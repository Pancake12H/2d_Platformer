//move in circle
dir += rotSpd

//Get target pos
var _targetX = xstart + lengthdir_x(radius, dir);
var _targetY = ystart + lengthdir_y(radius, dir);

//get xspd and yspd
//xspd = _targetX - x;
xspd = 0;
yspd = _targetY - y;
//yspd = 0;

//Move
x += xspd;
y += yspd;



