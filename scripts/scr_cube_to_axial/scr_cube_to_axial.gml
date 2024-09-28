/// @desc Returns Axial Coordinate from Cube Coordinate (Cube_X, Cube_Z)
/// @arg Hexagon_X
/// @arg Hexagon_Y
	var axial=[];
    axial[0]=argument0;
	axial[1]=argument1;
	return axial;

	/*
	https://www.redblobgames.com/grids/hexagons/#conversions
	function cube_to_axial(cube):
    var q = cube.x
    var r = cube.z
    return Hex(q, r)
	*/