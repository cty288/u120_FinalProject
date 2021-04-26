depth=-1000

if instance_exists(oplayer) and oshader.image_alpha=0 and oplayer.y-camera_get_view_y(view_camera[0])>304{
	x=camera_get_view_x(view_camera[0])
	y=camera_get_view_y(view_camera[0])
}
else{
	x=camera_get_view_x(view_camera[0])
	y=camera_get_view_y(view_camera[0])+480-144
}

current_text=text_info[page]

switch(array_length_1d(current_text)){

	case 1:
		if instance_exists(oavatar){
			with oavatar
			instance_destroy()
		}
		sprite_index=sbox4
		text=current_text[0]

		if textcount>=string_length(text){
		    sprite_index=sbox5
		}
		else if textcount/4=round(textcount/4)
			audio_play_sound(typewriter,0,false)

		if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
		    if textcount<string_length(text){
		        textcount=string_length(text)
		        sprite_index=sbox5
		    }
		    else if page+1<array_length_1d(text_info){
		        page+=1
		        textcount=0
		    }
		    else{
		        instance_destroy()
		    }
		}
		break;

	case 3:
		sprite_index=sbox1
		name=current_text[0]
		sf=current_text[1]
		text=current_text[2]
		if !instance_exists(oavatar)
			myavatar=instance_create(x,y,oavatar)
			myavatar.sprite_index=sf

		if textcount>=string_length(text){
		    sprite_index=sbox2
			index+=0.125;
			index%=4;
			image_index=index;
		}
		else if textcount/4=round(textcount/4)
			audio_play_sound(typewriter,0,false)

		if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
		    if textcount<string_length(text){
		        textcount=string_length(text)
		        sprite_index=sbox2
		    }
		    else if page+1<array_length_1d(text_info){
		        page+=1
		        textcount=0
				myavatar.sprite_index=sf
		    }
		    else{
		        instance_destroy()
		        with myavatar{
		            instance_destroy()
		        }
		    }
		}
		break;
}


if textcount=1{
	
	
	if text="Mogege!"
		audio_play_sound(moge_mogege,0,false)
	if text="Of course I talk, moge."
		audio_play_sound(moge_yes,0,false)
	if text="Mogegegege..."
		audio_play_sound(moge_mogegegege,0,false)
	if text="Hey guuuuuuuuuuuuuys!!!"
		audio_play_sound(moge_heyguys,0,false)
	if text="You and Moge-tans... Wamma have fun?"
		audio_play_sound(moge_havefun,0,false)
	if text="YAAAAAAAAAAAAAAAAAHHHHHHH!!!"{
		audio_play_sound(scream1,0,false)
		audio_play_sound(turn1,0,false)
	}
		

}