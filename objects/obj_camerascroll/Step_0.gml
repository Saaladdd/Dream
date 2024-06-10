//camera movement and fade speed

camera_set_view_pos(view_camera[0],xpos,ypos)
ypos=min(ypos+0.5,800); //to increase speed of scroll increase x value in min/max(ypos+x)
						//to change the end of scroll change the scond value in main/max function
//if(ypos=400)
//{
//	xpos=min(xpos+0.5,400);
//}
						
//uncomment upper code to unlock x axis movement

letterbox_up=min(letterbox_up+2,150);		//to change speed of letterbox appearing
letterbox_down=max(letterbox_down-2,-150);  //change  +/- value







if (!fadeout) a=max(a-0.005,0);  //to increase fade speed incease x in max(a-x) //fadein
else a=min(a+0.005,1);				//fadeout

letter+=0.25 //change value from 0 to 1 to change speed of each letter appearing
print=string_copy(str,1,letter);

if(letter > string_length(str)+50) and (next < array_length(strings)-1) //to change speed of new text line appearing increase the plus constant
{																		
	letter=0;
	next++;
	 
}
str=strings[next];


if(keyboard_check_direct(vk_space))
{
	holdspace++;
}

if(holdspace>50) or (ypos > 400) fadeout=1;  //change ypos > value to change fadeout timing

//if(a=1) and (fadeout=1)
//{
//	room_goto();
//}

//uncomment above to enable moving to other rooms