//change state
currentHp -= 1;
flash = 3;
instance_destroy(other);

state_ = HIT_;
var dir = other.direction;
xspdPush = lengthdir_x(4, dir);
yspdPush = lengthdir_y(4, dir);



