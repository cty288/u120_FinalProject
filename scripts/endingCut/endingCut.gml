function endingCut(argument0) {
	//create message box and show text

	if !instance_exists(oending){
	    n=instance_create(0,0,oending)
		with n{
			na=argument0;
		}
	}else{
		/*(if(!oending.msg_show&&oending.name_alpha<0){
			instance_destroy(oending);
			endCut();
		}*/
	}


}
