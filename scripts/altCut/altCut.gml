function altCut(argument0, argument1) {
	//code in cutscene's step event that reads the cutscene arrays and execute the scripts

	var s = argument0;
	var a = argument1;
	var len = array_length_1d(argument1);
 
	switch(len){
	    case 0 : script_execute(s); break;
	    case 1 : script_execute(s, a[0]); break;
	    case 2:  script_execute(s, a[0], a[1]); break;
	    case 3:  script_execute(s, a[0], a[1], a[2]); break;
	    case 4:  script_execute(s, a[0], a[1], a[2], a[3]); break;
	    case 5:  script_execute(s, a[0], a[1], a[2], a[3], a[4]); break;
	    case 6:  script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5]); break;
	    case 7:  script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6]); break;
	    case 8:  script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7]); break;
	    case 9:  script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8]); break;
	    case 10: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9]); break;
	    case 11: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10]); break;
	    case 12: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11]); break;
	    case 13: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11], a[12]); break;
	    case 14: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11], a[12], a[13]); break;
	    case 15: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11], a[12], a[13], a[14]); break;
	}

	/*switch(len){  
	    case 0 : script_execute(scene_info[scene,0]); break;
	    case 1:  script_execute(scene_info[scene,0], scene_info[scene,1]); break;
	    case 2:  script_execute(scene_info[scene,0], scene_info[scene,1], scene_info[scene,2]); break;
	    case 3:  script_execute(scene_info[scene,0], scene_info[scene,1], scene_info[scene,2], scene_info[scene,3]); break;
	    case 4:  script_execute(scene_info[scene,0], scene_info[scene,1], scene_info[scene,2], scene_info[scene,3], scene_info[scene,4]); break;
	    case 5:  script_execute(scene_info[scene,0], scene_info[scene,1], scene_info[scene,2], scene_info[scene,3], scene_info[scene,4], scene_info[scene,5]); break;
	    case 6:  script_execute(scene_info[scene,0], scene_info[scene,1], scene_info[scene,2], scene_info[scene,3], scene_info[scene,4], scene_info[scene,5], scene_info[scene,6]); break;
	    case 7:  script_execute(scene_info[scene,0], scene_info[scene,1], scene_info[scene,2], scene_info[scene,3], scene_info[scene,4], scene_info[scene,5], scene_info[scene,6], scene_info[scene,7]); break;
	    case 8:  script_execute(scene_info[scene,0], scene_info[scene,1], scene_info[scene,2], scene_info[scene,3], scene_info[scene,4], scene_info[scene,5], scene_info[scene,6], scene_info[scene,7], scene_info[scene,8]); break;
	    case 9:  script_execute(scene_info[scene,0], scene_info[scene,1], scene_info[scene,2], scene_info[scene,3], scene_info[scene,4], scene_info[scene,5], scene_info[scene,6], scene_info[scene,7], scene_info[scene,8], scene_info[scene,9]); break;
	    case 10: script_execute(scene_info[scene,0], scene_info[scene,1], scene_info[scene,2], scene_info[scene,3], scene_info[scene,4], scene_info[scene,5], scene_info[scene,6], scene_info[scene,7], scene_info[scene,8], scene_info[scene,9], scene_info[scene,10]); break;
	    case 11: script_execute(scene_info[scene,0], scene_info[scene,1], scene_info[scene,2], scene_info[scene,3], scene_info[scene,4], scene_info[scene,5], scene_info[scene,6], scene_info[scene,7], scene_info[scene,8], scene_info[scene,9], scene_info[scene,10], scene_info[scene,11]); break;
	    case 12: script_execute(scene_info[scene,0], scene_info[scene,1], scene_info[scene,2], scene_info[scene,3], scene_info[scene,4], scene_info[scene,5], scene_info[scene,6], scene_info[scene,7], scene_info[scene,8], scene_info[scene,9], scene_info[scene,10], scene_info[scene,11], scene_info[scene,12]); break;
	    case 13: script_execute(scene_info[scene,0], scene_info[scene,1], scene_info[scene,2], scene_info[scene,3], scene_info[scene,4], scene_info[scene,5], scene_info[scene,6], scene_info[scene,7], scene_info[scene,8], scene_info[scene,9], scene_info[scene,10], scene_info[scene,11], scene_info[scene,12], scene_info[scene,13]); break;
	    case 14: script_execute(scene_info[scene,0], scene_info[scene,1], scene_info[scene,2], scene_info[scene,3], scene_info[scene,4], scene_info[scene,5], scene_info[scene,6], scene_info[scene,7], scene_info[scene,8], scene_info[scene,9], scene_info[scene,10], scene_info[scene,11], scene_info[scene,12], scene_info[scene,13], scene_info[scene,14]); break;
	}


/* end altCut */
}
