//letter boxing and fade


draw_sprite_ext(spr_square,0,0,0,1400,150,0,c_black,1);    //upper letterbox
draw_sprite_ext(spr_square,0,0,700,1400,-150,0,c_black,1); //lower letterbox 
														   //to increase letterbox size change the yscale 


draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(pixelfont);
draw_text(340,600,print);











draw_sprite_ext(spr_square,0,0,0,1400,1400,0,c_black,a)  //fadein