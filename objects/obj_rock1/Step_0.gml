/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x+x_spd,y,obj_imposter_red1) or (place_meeting(x,y+y_spd,obj_imposter_red1))){
   if(keyboard_check_pressed(ord("Z"))){instance_destroy(id);}
}
//print;
show_debug_message("X:",x,"Y:",y);