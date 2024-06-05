movspeed = 2;
dashspeed = 4;
image_index = 0;
//Set the [0,0] to the frame number ysou animated Ex: 0,1 is first to second frame
animations ={
idle:{frames:[0,0]},
right:{frames:[0,4]},
left:{frames:[0,4]},
up:{frames:[0,4]},
down:{frames:[0,4]},
};
function set_animation_frame(status){
new_animation = variable_struct_get(animations,status);
animation_frames = new_animation.frames;

}
function bound(index,bound_array){
if(index>bound_array[1]+0.99 or index<bound_array[0]){
return bound_array[0];
}
return index;
}
set_animation_frame("idle");
