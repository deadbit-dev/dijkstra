/// @function                Vector2(x, y)
/// @description             Incapsulate x and y value. Default init zero values.
/// @param {real} x			 Value x.
/// @param {real} y			 Value y.

function Vector2(x = 0, y = 0) constructor
{
	self.x = x;
	self.y = y;
	
	self.mul_scalar = function (scalar)
	{
		self.x *= scalar;
		self.y *= scalar;
		
		return self;
	}
	
	self.div_scalar = function (scalar)
	{
		self.x = self.x div scalar;
		self.y = self.y div scalar;
		
		return self;
	}
	
	self.from_instance = function (instance)
	{	
		self.x = instance.x;
		self.y = instance.y;
		
		return self;
	}
	
	self.toString = function()
	{ 
		return "Vector2 { x: " + string(self.x) + ", y: " + string(self.y) + " }";
	}
}
