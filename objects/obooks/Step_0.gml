

if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
        instance_destroy()
         if instance_exists(ocutscene){
                with ocutscene
                endCut()
        }
 }


