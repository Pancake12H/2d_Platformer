spd = 2;
xspd = 0;
yspd = 0;
grv = 0.4;
maxHp = 10;
currentHp = maxHp;
distance = 200;
flash = 0;

//bullets
atkCooldown = room_speed/2;
alarm[0] = atkCooldown;

image_speed = 0.6;

state = EnemyState.IDLE

enum EnemyState
{
	IDLE,
	CHASE,
	ATTACK,
}



