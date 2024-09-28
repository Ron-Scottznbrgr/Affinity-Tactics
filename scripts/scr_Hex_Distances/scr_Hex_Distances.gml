//function hex_distance(a, b):
/// @desc hex_distance (origin_x,origin_y, target_x,target_y)
/// @arg Origin_x
/// @arg Origin_y
/// @arg target_x
/// @arg target_y

var o_x=argument0;
var o_y=argument1;
var t_x=argument2;
var t_y=argument3;
//show_debug_message("Arg0)"+string(argument0)+"\nArg1)"+string(argument1)+"\nArg2)"+string(argument2)+"\nArg3)"+string(argument3));
var distance=0.00;

var origin_cube=[];
var target_cube=[];


    var origin_cube = scr_axial_to_cube(o_x,o_y);//origin
    var target_cube = scr_axial_to_cube(t_x,t_y);//target
    //return cube_distance(ac, bc)

    //return	 (abs(o_x - t_x)+ abs(o_x + o_y - t_x - t_y)+ abs(o_y - t_y)) / 2
	//distance=	 (abs(a.q - b.q)+ abs(a.q + a.r - b.q - b.r)+ abs(a.r - b.r)) / 2
	//distance=	 floor(((o_x - t_x)+ (o_x + o_y - t_x - t_y)+ (o_y - t_y)) / 2.0)
	distance= floor(abs(origin_cube[0] - target_cube[0])+ abs(origin_cube[1] - target_cube[1]) + abs(origin_cube[2] - target_cube[2]))/2
				
				
return distance;





/*
function hex_distance(a, b):
    var ac = axial_to_cube(a)
    var bc = axial_to_cube(b)
    return cube_distance(ac, bc)
	
	*/