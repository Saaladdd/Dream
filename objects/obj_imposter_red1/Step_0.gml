/// @description Insert description here
// You can write your code in this editor
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
x_spd = movspeed*(right-left);
y_spd = movspeed*(down-up);
if(!(x_spd)&&(!y_spd)){set_animation_frame("idle")}
if(x_spd>0){set_animation_frame("right")}
if(x_spd<0){set_animation_frame("left")}
if(y_spd<0){set_animation_frame("up")}
if(y_spd>0){set_animation_frame("down")}
if(place_meeting(x+x_spd,y,obj_grass1))==true{
    x_spd=0;
}
if(place_meeting(x,y+y_spd,obj_grass1))==true{
    y_spd=0;
}
x += x_spd;
y += y_spd;