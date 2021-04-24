function messageCut(argument0) {
	//create message box and show text

	if !instance_exists(omessage){
	    instance_create(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+168,omessage)
		with omessage
			text=argument0
	}


}
