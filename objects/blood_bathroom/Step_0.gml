if instance_exists(oplayer){
	if(distance_to_object(oplayer)<=32&&keyboard_check_pressed(vk_space)){
        if !instance_exists(ocutscene)
            createScene()
	}
}

