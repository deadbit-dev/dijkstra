if (select)
{
	window_set_cursor(cr_none);
} 
else if(select == noone && instance_position(mouse_x, mouse_y, global.POINT))
{
	window_set_cursor(cr_drag);
} 
else
{
	window_set_cursor(cr_default);
}
