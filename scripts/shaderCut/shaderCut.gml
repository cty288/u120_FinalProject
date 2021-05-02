function shaderCut(argument0, argument1, argument2) {
	//control shader's image alpha, make it fade in or out
	if instance_exists(oshader){
	
		if oshader.sprite!=argument0
			oshader.sprite=argument0

		if oshader.alpha!=argument1{

		if argument1=1
		        oshader.timer+=30/argument2
		else if argument1=0
		        oshader.timer-=30/argument2

		}
		else 
		endCut()
	
	}
	else 
		instance_create(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),oshader)


}
