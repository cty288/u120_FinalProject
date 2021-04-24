function pauseSystem() {
	if keyboard_check_pressed(vk_escape){
	
	    if room!=rm_start and room!=rm_pause and room!=rm_gameover{
		
			screen_save("pause_shader.png")
			spr=sprite_add("pause_shader.png",1,false, false,0,0);
			previous_background=obackground.sprite_index
			obackground.sprite_index=spr
			obackground.image_alpha=0.5
			oview.persistent=false
			oshader.persistent=false
		
	        if instance_exists(oplayer){
	            oplayer.persistent=false
			}
		
	        previous_room=room
	        room_goto(rm_pause) 
			audio_pause_all()
			audio_play_sound(menu_confirm,0,false)
	        page=0
	        menu_index=0
	    }
	
	    else if room=rm_start and page=2{
	        page=3
			menu_index=1
			audio_play_sound(menu_quit,0,false)
	    }
	    else if room=rm_pause{
	        if page=0{
				obackground.sprite_index=previous_background
				obackground.image_alpha=1
	            room_goto(previous_room)
				audio_play_sound(menu_quit,0,false)
				audio_resume_all()
			}
	        else if page=1
	            page=0
				menu_index=1
				audio_play_sound(menu_quit,0,false)
	        }
			else if page=2{
				page=0
				menu_index=2
				audio_play_sound(menu_quit,0,false)
			}
	}

	if room=rm_pause or room=rm_start or room=rm_gameover{
	    if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
	        if page=0{
	            switch(menu_index){
	                case 0:
						obackground.sprite_index=previous_background
						obackground.image_alpha=1
	                    room_goto(previous_room);
						audio_play_sound(menu_quit,0,false)
						audio_resume_all()
	                    break;
	                case 1:
	                    page=1
	                    menu_index=0
						audio_play_sound(menu_confirm,0,false)
	                    break;
	                case 2:
	                    page=2
	                    menu_index=0
						audio_play_sound(menu_confirm,0,false)
	                    break;
	                case 3:
	                    game_load("Save10.sav")
	                    room_goto(rm_start)
	                    page=3
	                    menu_index=0
						audio_play_sound(menu_quit,0,false)
						audio_play_sound(opening,0,true)
	                    break;
	            }
	        }
        
	        else if page=1{
	            switch(menu_index){
	                case 0:
						audio_play_sound(menu_confirm,0,false)
	                    game_save("Save01.sav")
	                    messageCut("Game file 01 saved.")
						menu_index=5
	                    break;
	                case 1:
						audio_play_sound(menu_confirm,0,false)
	                    game_save("Save02.sav")
	                    messageCut("Game file 02 saved.")
						menu_index=5
	                    break;
	                case 2:
						audio_play_sound(menu_confirm,0,false)
	                    game_save("Save03.sav")
	                    messageCut("Game file 03 saved.")
						menu_index=5
	                    break;
	                case 3:
						audio_play_sound(menu_confirm,0,false)
	                    game_save("Save04.sav")
	                    messageCut("Game file 04 saved.")
						menu_index=5
	                    break;
	                case 4:
						audio_play_sound(menu_confirm,0,false)
	                    game_save("Save05.sav")
	                    messageCut("Game file 05 saved.")
						menu_index=5
	                    break;
	                case 5:
	                    page=0
	                    menu_index=1
						audio_play_sound(menu_quit,0,false)
	                    break;
	            }
	        }
        
	        else if page=2{
	            switch(menu_index){
	                case 0:
						audio_play_sound(menu_confirm,0,false)
	                    game_load("Save01.sav")
	                    break;
	                case 1:
						audio_play_sound(menu_confirm,0,false)
	                    game_load("Save02.sav")
	                    break;
	                case 2:
						audio_play_sound(menu_confirm,0,false)
	                    game_load("Save03.sav")
	                    break;
	                case 3:
						audio_play_sound(menu_confirm,0,false)
	                    game_load("Save04.sav")
	                    break;
	                case 4:
						audio_play_sound(menu_confirm,0,false)
	                    game_load("Save05.sav")
	                    break;
	                case 5:
						audio_play_sound(menu_quit,0,false)
	                    menu_index=0
	                    if room=rm_pause{
	                    page=0
						menu_index=2
						}
	                    if room=rm_start{
	                    page=3
						menu_index=1
						}
	                    break;
	            }
	        }
        
	        else if page=3{
	            switch(menu_index){
	                case 0:
						audio_play_sound(menu_confirm,0,false)
						instance_create(0,0,story_read)
	                    break;
	                case 1:
						audio_play_sound(menu_confirm,0,false)
	                    page=2
	                    menu_index=0
	                    break;
	                case 2:
						audio_play_sound(menu_confirm,0,false)
	                    game_end()
	                    break;
	            }
	        }
		
			else if page=4{
	            switch(menu_index){
	                case 0:
						game_load("Save99.sav")
	                    break;
	                case 1:
	                    game_load("Save10.sav")
						oplayer.state=0
	                    room_goto(rm_start)
	                    page=3
	                    menu_index=0
						audio_play_sound(menu_quit,0,false)
						audio_play_sound(opening,0,true)
	                    break;
	            }
	        }
	    }
	}


}
