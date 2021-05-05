if(global.die){
	room_persistent=false;
	for(var i=0; i<array_length(room_list); i++){
		room_set_persistent(room_list[i],false);
	}
}else{
	room_persistent=true;

}



var current_room=room_get_name(room);

if(prev_room!=current_room){
	var p=room_sound[?prev_room];
	if(p!=undefined){
		for(var i=0; i<array_length(p); i++){
			audio_sound_gain(p[i],0,2000)
		}

	}
	
	prev_room=current_room;
	var s=room_sound[?current_room];
	var volume=room_volume[?current_room];
	if(s!=undefined){
		for(var i=0; i<array_length(s);i++){
			if(!audio_is_playing(s[i])||audio_sound_get_gain(s[i])<=0.1){
				audio_play_sound(s[i],1,true);
				audio_sound_gain(s[i],0,0)
				audio_sound_gain(s[i],volume[i],8000);
			}
		}

	}

}