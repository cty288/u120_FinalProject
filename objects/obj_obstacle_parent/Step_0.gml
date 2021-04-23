if(hideable){
	if(distance_to_object(player)<=depth_distance){
		//show_debug_message(distance_to_object(player));
		if(player.y-y>=0){
			player.depth=-10;
		}else{
			if(place_meeting(x,y,player)){
				player.depth=-10;
			}else{
				player.depth=10;
			}


		}
	}

}
