instance.set(global.WALL, infinity);

instance.find_path(
	new Vector2().from_instance(global.START),
	new Vector2().from_instance(global.GOAL)
);
