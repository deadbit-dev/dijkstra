with (select)
{
	x = other.x;
	y = other.y;
}

select = noone;
visible = false;

global.MAP.instance.find_path(
	new Vector2().from_instance(global.START),
	new Vector2().from_instance(global.GOAL)
);
