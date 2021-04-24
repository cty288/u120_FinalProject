function createInfo() {
	//create arrays within a higher level array
	//only need in GMS 1.4
	//no longer in use

	var arg
	var i=0; repeat(argument_count){
	    arg[i]=argument[i]
	    i++
	}

	switch(argument_count){
	    case 0 : break;
	    case 1 : break;
	    case 2 : t_scene_info[arg[0],0]=arg[1];break;
	    case 3 : t_scene_info[arg[0],0]=arg[1];t_scene_info[arg[0],1]=arg[2]; break;
	    case 4 : t_scene_info[arg[0],0]=arg[1];t_scene_info[arg[0],1]=arg[2];t_scene_info[arg[0],2]=arg[3];break;
	    case 5 : t_scene_info[arg[0],0]=arg[1];t_scene_info[arg[0],1]=arg[2];t_scene_info[arg[0],2]=arg[3];t_scene_info[arg[0],3]=arg[4];break; 
	    case 6 : t_scene_info[arg[0],0]=arg[1];t_scene_info[arg[0],1]=arg[2];t_scene_info[arg[0],2]=arg[3];t_scene_info[arg[0],3]=arg[4];t_scene_info[arg[0],4]=arg[5];break;
	    case 7 : t_scene_info[arg[0],0]=arg[1];t_scene_info[arg[0],1]=arg[2];t_scene_info[arg[0],2]=arg[3];t_scene_info[arg[0],3]=arg[4];t_scene_info[arg[0],4]=arg[5];t_scene_info[arg[0],5]=arg[6];break;
	    case 8 : t_scene_info[arg[0],0]=arg[1];t_scene_info[arg[0],1]=arg[2];t_scene_info[arg[0],2]=arg[3];t_scene_info[arg[0],3]=arg[4];t_scene_info[arg[0],4]=arg[5];t_scene_info[arg[0],5]=arg[6];t_scene_info[arg[0],6]=arg[7];break;
	    }



}
