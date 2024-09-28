///@desc initialize array of textbox

//message[0]=" Spell 1 \n Spell 2 \n Spell 3 \n Spell 4 \n Spell 5 \n Spell 6 \n Spell 7 \n Spell 8 \n Spell 9 \n Spell 10 \n Spell 11 \n Spell 12 \n Spell 13 \n Spell 14 \n Spell 15 \n Spell 16 \n Spell 17 \n Spell 18";
message[0]="Sign is Error"
//Letter Variables
message_current=0;
message_end=1;
message_draw="";
message_speed=100; //Every 2 frames, character appears
characters = 0;

//get # of chars in first message
message_length = string_length(message[message_current]);

x2=300
x1=(surface_get_width(application_surface)/2)-x2
//x1=300;//100

//x2=x1+440;
y1=120;//620
y2=y1+600; //+100

