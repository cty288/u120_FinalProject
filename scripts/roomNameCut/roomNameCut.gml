function roomNameCut(argument0) {
	//create message box and show text

	if !instance_exists(oroomName){
	    n=instance_create(0,0,oroomName)
		with n{
			na=argument0;
		}
	}else{
		if(!oroomName.msg_show&&oroomName.name_alpha<0){
			instance_destroy(oroomName);
			endCut();
		}
	}


}
