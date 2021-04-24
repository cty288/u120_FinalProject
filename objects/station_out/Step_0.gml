if instance_exists(oplayer){
if x=oplayer.x and y=oplayer.y{
    if keyboard_check_pressed(vk_right) or keyboard_check(vk_right){
        if !instance_exists(ocutscene)
            createScene()
    }
}
}

