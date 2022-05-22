/// @function                Map(width, height, size)
/// @description             Data structure for work with path;
/// @param {real} width	     Map width.
/// @param {real} height	 Map height.
/// @param {real} size		 Cell size.

function Map (width, height, size) constructor
{
	self._grid = new Grid(width div size, height div size, size);
	self._path = [];
	
	self.set = function (obj, weight)
	{
		with (obj)
		{
			var node = other._grid.cell_to_node(
				other._grid.world_to_cell(new Vector2().from_instance(self))
			);
			other._grid.set_weight(node, weight);
		}
	}
	
	self.find_path = function (_start, _goal, _method = Dijkstra)
	{	
		var start_node = _grid.cell_to_node(_grid.world_to_cell(_start));
		var goal_node = _grid.cell_to_node(_grid.world_to_cell(_goal));
	
		var came_from = _method(_grid, start_node, goal_node);
	
		var current = came_from[? goal_node];
	
		while (current != start_node)
		{
			var cell = _grid.node_to_cell(current);
			array_push(_path, _grid.cell_to_world(cell));
			current = came_from[? current];
		}
	}

	self.draw = function (view)
	{
		for (var i = 0; i < array_length(self._path); i++)
		{
			other.draw_sprite(view, 0, self._path[i].x, self._path[i].y);
		}
	}

	self.clear_path = function ()
	{
		_path = [];
	}
}