//Reduce Flash
/*
if(flashAlpha>0 && RemoveColor==1){
flashAlpha-=0.05;
}
if (RemoveColor==1 && flashAlpha==0)
{
	RemoveColor=0;
}
*/
//event_perform(ev_mouse_enter,0);

          //event_perform_object(hex_tile,ev_mouse_enter,1);
       

if(RemoveColor==1){
event_perform(ev_alarm,0);
}