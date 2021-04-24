function endCut() {
	//end the current scene, move to the next or destroy the cutscene object if scene comes to end 

	scene++
	if scene>array_length_1d(scene_info)-1{
	    instance_destroy()
	    exit
	}

	event_perform(ev_other,ev_user0);


}
