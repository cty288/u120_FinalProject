function triggerDialog() {
	//start the dialogue, create textbox and avatar once the player is within certain range and complete required action.

	if point_distance(x,y,oplayer.x,oplayer.y)<=32{
	        if (point_direction(x,y,oplayer.x,oplayer.y)=0 and oplayer.sprite_index=oplayer.mysprite[3]) or (point_direction(x,y,oplayer.x,oplayer.y)=90 and oplayer.sprite_index=oplayer.mysprite[1]) or (point_direction(x,y,oplayer.x,oplayer.y)=180 and oplayer.sprite_index=oplayer.mysprite[4]) or (point_direction(x,y,oplayer.x,oplayer.y)=270 and oplayer.sprite_index=oplayer.mysprite[2]){
	            if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
            
	                if mytextbox=noone{
	                if !instance_exists(otext){
	                    if instance_exists(oplayer) and oshader.image_alpha=0 and oplayer.y-camera_get_view_y(view_camera[0])>304{
							mytextbox=instance_create(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),otext)
						}
						else{
							mytextbox=instance_create(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+480-144,otext)
						}
						mytextbox.text_info=text_info
	                }
	                }
                    
	                else if !instance_exists(mytextbox){
	                    mytextbox=noone
	                }
				
	            }
	        }
	    }
    
	    else{
	        if mytextbox!=noone{
	            with mytextbox{
	                instance_destroy()
	            }
	            mytextbox=noone
	            if self=oNPC
	                sprite_index=mysprite[1]
	        }
	    }



	/*if point_distance(x,y,oplayer.x,oplayer.y)<=32{
	        if (point_direction(x,y,oplayer.x,oplayer.y)=0 and oplayer.sprite_index=oplayer.mysprite[3]) or (point_direction(x,y,oplayer.x,oplayer.y)=90 and oplayer.sprite_index=oplayer.mysprite[1]) or (point_direction(x,y,oplayer.x,oplayer.y)=180 and oplayer.sprite_index=oplayer.mysprite[4]) or (point_direction(x,y,oplayer.x,oplayer.y)=270 and oplayer.sprite_index=oplayer.mysprite[2]){
	            if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
            
	                if mytextbox=noone{
	                if !instance_exists(otext){
	                    mytextbox=instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-144,otext)
	                    mytextbox.text=mytext
	                    mytextbox.name=myname
	                    mytextbox.creator=id
	                }
	                }
                    
	                else if !instance_exists(mytextbox){
	                    mytextbox=noone
	                }
                
	                if myavatar=noone{
	                if !instance_exists(oavatar){
	                    myavatar=instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-144,oavatar)
	                    myavatar.sf=mysf
	                    mytextbox.creator=id
	                    with myavatar
	                    sprite_index=sf[page]
	                }
	                }   
                
	                else if !instance_exists(myavatar){
	                    myavatar=noone
	                }
                
	            }
	        }
	    }
    
	    else{
	        if mytextbox!=noone{
	            with mytextbox{
	                instance_destroy()
	            }
	            with myavatar{
	                instance_destroy()
	            }
	            mytextbox=noone
	            myavatar=noone
	            if self=oNPC
	                sprite_index=mysprite[1]
	        }
	    }


/* end triggerDialog */
}
