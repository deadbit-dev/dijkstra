/// @function                Grid(cols, rows)
/// @description             Graph-based data structure.
/// @param {real} cols		 Grid width.
/// @param {real} rows		 Grid height.

function Grid(cols, rows, size) : Graph(cols * rows) constructor
{
	self._cols = cols;
	self._rows = rows;
	self._size = size;
	
	self.valid = function (cell)
	{ 
		return (0 <= cell.x && cell.x < self._cols && 0 <= cell.y && cell.y < self._rows);
	}
	
	self.world_to_cell = function (pos)
	{
		return pos.div_scalar(self._size);
	}
	
	self.cell_to_world = function (cell)
	{
		return cell.mul_scalar(self._size);
	}
	
	self.cell_to_node = function (cell)
	{
		return min(self._cols - 1, max(0, cell.x)) + min(self._rows - 1, max(0, cell.y)) * self._cols;
	}
	
	self.node_to_cell = function (node)
	{
		return new Vector2(node % self._cols, floor(node / self._cols));
	}
	
	self.init_neightbours = function (x, y)
	{
		var node = self.cell_to_node(new Vector2(x, y));
		
		for (var i = 0; i < array_length(_directions); i++)
		{
			var cell = new Vector2(x + _directions[i].x, y + _directions[i].y);
				
			if (self.valid(cell))
			{
				self.add_edge(node, self.cell_to_node(cell));
			}
		}
	}
	
	for (var i = 0; i < self._rows; i++)
	{
		for (var j = 0; j < self._cols; j++)
		{
			self.init_neightbours(j, i);
		}
	}
		
	static _directions = [new Vector2(1, 0), new Vector2(0, 1), new Vector2(-1, 0), new Vector2(0, -1)];
}
