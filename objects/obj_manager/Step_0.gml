if(global.die){
	room_persistent=false;
	for(var i=0; i<array_length(room_list); i++){
		room_set_persistent(room_list[i],false);
	}
}else{
	room_persistent=true;

}

