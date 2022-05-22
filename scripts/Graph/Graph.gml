#macro DEFAULT_WEIGHT 1

/// @function                Grap(nodes)
/// @description             Inplementation undirected weighted graph.
/// @param {real} nodes		 Number of nodes in graph.

function Graph (nodes) constructor
{
	self._nodes = nodes;
	self._edges = [];
	self._weights = [];
	
	self.add_edge = function (from, to)
	{ 
		array_push(self._edges[from], to);
	}
	
	self.get_neightbours = function (node)
	{ 
		return self._edges[node];
	}
	
	self.set_weight = function (node, weight)
	{
		self._weights[node] = weight;
	}
	
	self.get_weight = function (node)
	{
		return self._weights[node];
	}
	
	for (var i = 0; i < self._nodes; i++)
	{
		self._weights[i] = DEFAULT_WEIGHT;
		self._edges[i] = [];
	}
}
