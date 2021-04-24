if instance_exists(oplayer){
if x=oplayer.x and y=oplayer.y{
    if keyboard_check_pressed(vk_up) or keyboard_check(vk_up) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
        if !instance_exists(ocutscene)
            createScene()
    }
}
}

