/// @description hit feedback
draw_self();

if (flash > 0)
{
	flash--;
	shader_set(Sh_Hit);
	draw_self();
	shader_reset();
}





