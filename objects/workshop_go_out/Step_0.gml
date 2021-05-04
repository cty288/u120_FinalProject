if instance_exists(oplayer){
	if(distance_to_object(oplayer)<=16&&!touched){
        if !instance_exists(ocutscene)
            createScene()
			touched=true;
	}
	if(distance_to_object(oplayer)>16 && touched){
		touched=false;
	}
}

