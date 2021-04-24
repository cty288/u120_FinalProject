player_speed_x*=0.2;
player_speed_y*=0.2;
depth=-10;
if(!is_chatting&&!is_interacting&&!system_msg){
	if(keyboard_check(ord("W"))){
		player_speed_y-=acc;
	}
	if(keyboard_check(ord("S"))){
		player_speed_y+=acc;
	}
	if(keyboard_check(ord("A"))){
		player_speed_x-=acc;
	}
	if(keyboard_check(ord("D"))){
		player_speed_x+=acc;
	}

	if(abs(player_speed_x)>player_max_speed_x){
		player_speed_x=sign(player_speed_x)*player_max_speed_x;
	}

	if(abs(player_speed_y)>player_max_speed_y){
		player_speed_y=sign(player_speed_y)*player_max_speed_y;
	}

	var new_x=0;
	for(var i=0; i<abs(player_speed_x); i++){
		 new_x = x + sign(player_speed_x);
		 var meet=false;
		 for(var j=0; j<array_length(manager.colliders);j++){
			if(instance_place(new_x,y,manager.colliders[j])){
				meet=true;
			}
		 }
		 if(!meet){
			x+=sign(player_speed_x);
		 }else{
			player_speed_x=0;
		 }
	}

	var new_y=0;
	for(var i=0; i<abs(player_speed_y); i++){
		 new_y = y + sign(player_speed_y);
		 var meet=false;
		 for(var j=0; j<array_length(manager.colliders);j++){
			if(instance_place(x,new_y,manager.colliders[j])){
				meet=true;
			}
		 }
		 if(!meet){
			y+=sign(player_speed_y);
		 }else{
			player_speed_y=0;
		 }
	}





}
	
if(player_speed_x>0){
	sprite_index=Right1;
}else if(player_speed_x<0){
	sprite_index=Left1;
}

if(player_speed_y>0){
	sprite_index=Front1;
}else if(player_speed_y<0){
	sprite_index=Back1;
}

if((player_speed_y==0 && player_speed_x==0)||is_chatting){
	image_speed=0;
	image_index=1;
}else{
	image_speed=0.25;
}
