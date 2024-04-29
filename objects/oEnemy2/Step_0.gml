if currentHp <= 0
{
	instance_destroy();
}

switch(state)
{
	case EnemyState.IDLE : EnemyStateIdle(); break;
	case EnemyState.CHASE : EnemyStateChase(); break;
	case EnemyState.ATTACK : EnemyStateAttack(); break;
}

if state = EnemyState.ATTACK
{
	xspd = 0;
	sprite_index = sKnightAtk;
}

if state = EnemyState.IDLE
{
	xspd = 0;
	sprite_index = sKnightIdle;
}

