if instance_exists(oplayer){
if x=oplayer.x and y=oplayer.y{
    if (keyboard_check_pressed(ord("S")) or keyboard_check(ord("S")) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter))
	and !touched{
		touched=true;
        if !instance_exists(ocutscene)
            createScene()
    }
}else{
	touched=false;
}
}
