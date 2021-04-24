function talkCut4() {
	//read the text info4 and create the textbox
	//end when dialogue ends

	if mytextbox=noone{
    
	    if instance_exists(oplayer) and oshader.image_alpha=0 and oplayer.y-camera_get_view_y(view_camera[0])>304{
			mytextbox=instance_create(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),otext)
		}
		else{
			mytextbox=instance_create(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+480-144,otext)
		}
	    mytextbox.text_info=text_info4
	}

	else if !instance_exists(mytextbox){
	    mytextbox=noone
	    endCut()
	}


}
