//camera movement and fade speed

camera_set_view_pos(view_camera[0],xpos,ypos)
ypos=min(ypos+0.5,800); //to increase speed of scroll increase x value in min/max(ypos+x)
						//to change the end of scroll change the scond value in main/max function

if (!fadeout) a=max(a-0.005,0.25);  //to increase fade speed incease x in max(a-x)
else a=min(a+0.005,1);