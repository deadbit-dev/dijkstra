/// @function                Dijkstra(graph, start, goal)
/// @description             Implementation Dijkstra Algorithm.
/// @param {}     _graph	 Graph in question.
/// @param {real} _start	 Index start node in graph.
/// @param {real} _goal		 Index goal node in graph.

function Dijkstra (_graph, _start, _goal)
{
	var frontier = ds_priority_create();
	var came_from = ds_map_create();
	var cost_so_far = ds_map_create();
	
	ds_priority_add(frontier, _start, 0);
	came_from[? _start] = noone;
	cost_so_far[? _start] = 0;
	
	while (!ds_priority_empty(frontier))
	{
		var current = ds_priority_find_min(frontier);
		ds_priority_delete_min(frontier);
		
		if (current == _goal)
		{
			break;
		}
		
		var neightbours = _graph.get_neightbours(current);
		for (var i = 0; i < array_length(neightbours); i++)
		{
			var next = neightbours[i];
			var new_cost = cost_so_far[? current] + _graph.get_weight(next);
			
			if (!ds_map_exists(cost_so_far, next) || new_cost < cost_so_far[? next])
			{
				cost_so_far[? next] = new_cost;
				ds_priority_add(frontier, next, new_cost);
				came_from[? next] = current;
			}
		}
	}
	
	return came_from;
}
