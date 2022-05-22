select = instance_position(mouse_x, mouse_y, global.POINT);

if (select)
{
	x = select.x;
	y = select.y;
	
	visible = true;
	
	global.MAP.instance.clear_path();
}
