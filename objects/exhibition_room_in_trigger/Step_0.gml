if instance_exists(oplayer){
if x=oplayer.x and y=oplayer.y{
    if keyboard_check_pressed(ord("W")) or keyboard_check(ord("W")) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
        if !instance_exists(ocutscene)
            createScene()
    }
}
}
