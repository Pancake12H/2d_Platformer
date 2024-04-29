// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawHealth(){
	draw_healthbar(
		x - 10, 
		y - 30,
		x + 10,
		y - 35 ,
		100 * (currentHp / maxHp),
		c_black,
		c_red,
		c_green,
		0, 
		true, 
		false
	)
}


