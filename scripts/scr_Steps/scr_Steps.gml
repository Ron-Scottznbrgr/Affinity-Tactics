/*
var results = []
for each -N ≤ x ≤ +N:
    for each -N ≤ y ≤ +N:
        for each -N ≤ z ≤ +N:
            if x + y + z = 0:
                results.append(cube_add(center, Cube(x, y, z)))
				*/
				
				
/*
var selectable_hexes=[];
var counter=0;
var hex_offset=3;
var steps;
var target_cube=[];
var origin_cube=scr_axial_to_cube(hex_tile.array_x,hex_tile.array_y);

origins(x,y)



with (hex_tiles){

distance_x=hex_tile.array_x
distance_y=hex_tile.array_y

scr_Hex_Distances(origin_x,origin_y,distance_x,distance_y)
if (-steps<=[[[origin_x]]]distance_x && distance_x<=steps){ //x
if (-steps<=distance_y && distance_y<=steps){ //y
//works?
counter++
selectable_tiles[counter]=hex_tile


for (var row_x=0;row_x<3;row_x++){
if (row_x==0||row_x==2){hex_offset=3;}
else{hex_offset=4}

for (var row_y=0; row_y<hex_offset;row_y++){

target_cube=scr_axial_to_cube(hex_tile.array_x,hex_tile.array_y)




if (-steps<=target_cube[0] && target_cube[0]<=steps){ //x
if (-steps<=target_cube[1] && target_cube[1]<=steps){ //y
if (-steps<=target_cube[2] && target_cube[2]<=steps){ //z
if (target_cube[0]+target_cube[1]+target_cube[2]==0){
counter+=1;
selectable_tiles[counter]=hex_tile
}//if = 0;
}//z
}//y
}//x




}//for_y
}//for_x
}//with









}