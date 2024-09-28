///@desc initialize array of textbox

message[0]="I AM ERROR!"

//Letter Variables
message_current=0;
message_end=1;
message_draw="";
message_speed=0.5; //Every 2 frames, character appears
characters = 0;

//get # of chars in first message
message_length = string_length(message[message_current]);

x2=300
x1=(surface_get_width(application_surface)/2)-x2
//x1=300;//100

//x2=x1+440;
y1=620;//320
y2=y1+100;

