/// @desc Returns Cube Coordinate from Axial Coordinate (Hex_X, Hex_Y)
/// @arg Hexagon_X
/// @arg Hexagon_Y
    var cube=[]
	cube[0] = argument0;//hex_x		//x
    cube[2] = argument1;//hex_y		//z
    cube[1] = -cube[0]+cube[2];		//y
    
	//show_debug_message("X) "+string(argument0)+"\nY) "+string(argument1))
	//show_debug_message("X) "+string(cube[0])+"\nY) "+string(cube[1])+"\nZ) "+string(cube[2]));
	return cube;
	
	/*
	https://www.redblobgames.com/grids/hexagons/#conversions
	function axial_to_cube(hex):
    var x = hex.q
    var z = hex.r
    var y = -x-z
    return Cube(x, y, z)
	*/