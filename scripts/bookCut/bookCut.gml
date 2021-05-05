function bookCut(argument0) {
	//create message box and show text

	if !instance_exists(obooks){
		audio_play_sound(paper,1,false);
	    instance_create(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-225,camera_get_view_y(view_camera[0])+10,obooks)
		with obooks
			text=argument0
	}


}
