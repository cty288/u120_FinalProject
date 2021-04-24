if room=rm_start or room=rm_pause or room=rm_gameover{

if page=3{
	for (var i=0; i<=array_length_1d(option)-1; i++){
        if option[i]!=noone{
			if i==menu_index
				draw_sprite_ext(option[i],1,368,304+(i*40),1,1,0,c_white,1-oshader.image_alpha)
			else
				draw_sprite_ext(option[i],0,368,304+(i*40),1,1,0,c_white,1-oshader.image_alpha)
	
		}
	}
}

if page=0{

draw_set_halign(fa_center)

for (var i=0; i<=array_length_1d(option)-1; i++){
        draw_set_colour(c_gray)
        if i==menu_index
            draw_set_colour(c_white)
        draw_text(80,8+(i*20),string_hash_to_newline(option[i]))
}

draw_set_color(c_white)

}

if page=4{

draw_set_halign(fa_center)

for (var i=0; i<=array_length_1d(option)-1; i++){
        draw_set_colour(c_gray)
        if i==menu_index
            draw_set_colour(c_white)
        draw_text(320,270+(i*20),string_hash_to_newline(option[i]))
}

draw_set_color(c_white)

}

if page=1 or page=2{

if room=rm_start{
	draw_sprite(save_window,0,0,0)
	draw_sprite_ext(start,0,368,304,1,1,0,c_white,1-oshader.image_alpha)
	draw_sprite_ext(load,1,368,344,1,1,0,c_white,1-oshader.image_alpha)
	draw_sprite_ext(shutdown,0,368,384,1,1,0,c_white,1-oshader.image_alpha)
}
if room=rm_pause
	draw_sprite(save_window,0,0,0)

draw_set_halign(fa_center)

for (var i=0; i<=array_length_1d(option)-1; i++){
        draw_set_colour(c_gray)
        if i==menu_index
            draw_set_colour(c_white)
        draw_text(80,8+(i*20),string_hash_to_newline(option[i]))
}

draw_set_color(c_white)

}

}