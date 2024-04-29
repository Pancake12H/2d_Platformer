//inicialize enemy
xspd = 0;
yspd = 0;
spd = 1;
xspdPush = 0;
yspdPush = 0;
flash = 0;

//health
maxHp = 5;
currentHp = maxHp;

//states
MOVEMENT_ = 0;
ATTACK_ = 1; 
HIT_ = 2

state_ = MOVEMENT_;

//bullets
bulletCooldown = room_speed/2;
alarm[0] = bulletCooldown;