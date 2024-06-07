//Variables

movspeed = 2;
dashspeed = 4;
image_index = 0;
var rate_mov;
globalvar x_spd, y_spd;
globalvar pick_up;
globalvar deletion_id;
deletion_id =-1;
directions = [
    [8, 8],     // bottom-right
    [-8, -8],   // top-left
    [8, -8],    // top-right
    [-8, 8],    // bottom-left
    [8, 0],     // right
    [0, -8],    // top
    [0, 8],     // bottom
    [-8, 0]  
];
pick_up = false;


//All animation frames structure
animations ={
idle:{frames:[0,0]},
right:{frames:[0,3]},
left:{frames:[0,3]},
up:{frames:[0,3]},
down:{frames:[0,3]},
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


