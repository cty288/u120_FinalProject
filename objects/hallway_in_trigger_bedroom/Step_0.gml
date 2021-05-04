if instance_exists(oplayer) and canPress{
if x=oplayer.x and y=oplayer.y{
    if keyboard_check_pressed(ord("S")) or keyboard_check(ord("S")) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
        if !instance_exists(ocutscene)
            createScene()
			canPress=false
			alarm[0]=5
    }
}
}
