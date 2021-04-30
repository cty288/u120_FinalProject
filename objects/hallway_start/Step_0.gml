if instance_exists(oplayer){
	if(distance_to_object(oplayer)<=64&&!visited){
        if !instance_exists(ocutscene){
            createScene()
			visited=true
		}else{
			//show_debug_message("xxx");
		}
	}
}

