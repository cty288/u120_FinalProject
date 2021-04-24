/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if instance_exists(oplayer){
if x=oplayer.x and y=oplayer.y{
    if keyboard_check_pressed(vk_right) or keyboard_check(vk_right) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
        if !instance_exists(ocutscene){
            createScene()
			instance_destroy()
		}
    }
}
}

