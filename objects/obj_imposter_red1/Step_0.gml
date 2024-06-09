/// @description Insert description here
// You can write your code in this editor
pick_up = false;
image_speed =1;
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
if(keyboard_check(vk_lshift)){rate_mov=dashspeed;image_speed = 2;}else{rate_mov=movspeed;}
//if((down and right)or(down and left) or (up and right)or(up and left)){}
x_spd = rate_mov*(right-left);
y_spd = rate_mov*(down-up);
if(!(x_spd)&&(!y_spd)){set_animation_frame("idle")}
if(x_spd>0){set_animation_frame("right")}
if(x_spd<0){set_animation_frame("left")}
if(y_spd<0){set_animation_frame("up")}
if(y_spd>0){set_animation_frame("down")}
if(place_meeting(x+x_spd,y,obj_collision)){
    x_spd=0;
}
if(place_meeting(x,y+y_spd,obj_collision)){
    y_spd=0;
}


if(place_meeting(x+x_spd,y,_all_items)){
    x_spd=0;
}
if(place_meeting(x,y+y_spd,_all_items)){
    y_spd=0;
	
}


if(place_meeting(x,y,obj_roomswitch)){
    x_spd=0;
}
if(place_meeting(x,y,obj_roomswitch)){
    y_spd=0;
	
}
//For pickup and to get deletion id
for (var i = 0; i < array_length(directions); i++) {
    var dx = directions[i][0]; // x offset
    var dy = directions[i][1]; // y offset
    //show_debug_message("Checking position: (" + string(x + dx) + ", " + string(y + dy) + ")");
    if (place_meeting(x + dx, y + dy, _all_items)) {
        pick_up = true; // Set pick_up to true if an item is found
        //show_debug_message("Item found at: (" + string(x + dx) + ", " + string(y + dy) + ")");        
        with (instance_place(x + dx, y + dy, _all_items)) {
            deletion_id = id;
		}
        break; // Exit the loop once an item is found
    }
}
x += x_spd;
y += y_spd;
// Loop through all views


//0print("X:",x,"Y:",y);
show_debug_message("PLAYER:X:{0} Y:{1}",x,y);