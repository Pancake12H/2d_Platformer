// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PickUpGun()
{
	 var pickuplist = ds_list_create();
	 var pickupCount = collision_circle_list(x, y, pickup_radius, oPlayerGun, false, true, pickuplist, true);
	 if (pickupCount > 0)
	 {
		if(weapon == noone)
		{
			weapon = pickuplist[| 0]
			
			weapon.target = id;
			weapon.is_being_carried = true;
		}
	}
	 ds_list_destroy(pickuplist);
}
	
