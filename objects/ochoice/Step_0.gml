if keyboard_check_pressed(vk_down){
    if menu_index<array_length_1d(option)-1
        menu_index++
    else
        menu_index=0
}
if keyboard_check_pressed(vk_up){
    if menu_index>0
        menu_index--
    else
        menu_index=array_length_1d(option)-1
}

if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
    
    oplayer.mystate=0
    
    switch(menu_index){
        case 0:
            instance_create(x,y,choice[0])
            break;
        case 1:
            instance_create(x,y,choice[1])
            break;
    }
    
    
    instance_destroy()
	if instance_exists(ocutscene){
		with ocutscene
			endCut()
    }
}


