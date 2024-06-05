//Variables
movspeed = 2;
dashspeed = 4;
image_index = 0;
var rate_mov;
//All animation frames structure
animations ={
idle:{frames:[0,0]},
right:{frames:[0,4]},
left:{frames:[0,4]},
up:{frames:[0,4]},
down:{frames:[0,4]},
};
//Function for animations
function set_animation_frame(status){
new_animation = variable_struct_get(animations,status);
animation_frames = new_animation.frames;
}
//Function for frame boundaries
function bound(index,bound_array){
if(index>bound_array[1]+0.99 or index<bound_array[0]){
return bound_array[0];
}
return index;
}
//default animations
set_animation_frame("idle");
