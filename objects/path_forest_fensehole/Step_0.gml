if instance_exists(oplayer){
if point_distance(x,y,oplayer.x,oplayer.y)<=32{
    if (point_direction(x,y,oplayer.x,oplayer.y)=0 and oplayer.sprite_index=oplayer.mysprite[3]) or (point_direction(x,y,oplayer.x,oplayer.y)=90 and oplayer.sprite_index=oplayer.mysprite[1]) or (point_direction(x,y,oplayer.x,oplayer.y)=180 and oplayer.sprite_index=oplayer.mysprite[4]) or (point_direction(x,y,oplayer.x,oplayer.y)=270 and oplayer.sprite_index=oplayer.mysprite[2]){
        if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
                if !instance_exists(ocutscene)
                    createScene()
        }
    }
}
}

