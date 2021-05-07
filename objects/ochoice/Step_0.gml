//image_xscale=1+(menu_max-2)*0.3
image_yscale=1+(menu_max-2)*0.4
image_xscale=1.1;

x=240+camera_get_view_x(view_camera[0]);
y=240;
if keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")){
    if menu_index<menu_max-1
        menu_index++
    else
        menu_index=0
}
if keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")){
    if menu_index>0
        menu_index--
    else
        menu_index=menu_max-1
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
		case 2:
			 instance_create(x,y,choice[2])
			break;
		case 3:
			 instance_create(x,y,choice[3])
			break;
    }
    instance_destroy(otext);
    
    instance_destroy()
	if instance_exists(ocutscene){
		with ocutscene
			endCut()
    }
}


