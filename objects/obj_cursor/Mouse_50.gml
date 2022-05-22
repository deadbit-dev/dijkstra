with (select)
{
	x = mouse_x;
	y = mouse_y;	
}

if (select)
{
	var collisions = ds_list_create();
	instance_position_list(mouse_x, mouse_y, all, collisions, false);

	if (ds_list_size(collisions) == 1) // only select instance collision
	{
		x = mouse_x;
		y = mouse_y;
	
		if (!place_snapped(global.SIZE, global.SIZE))
		{
			move_snap(global.SIZE, global.SIZE);
		}
	}
}

