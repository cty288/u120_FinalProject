function choiceCut() {
	//create a choice object with choices altered
	//still under testing

	var arg
	var i=0; repeat(argument_count){
	    arg[i]=argument[i]
	    i++
	}

	if !instance_exists(otext) and mytextbox=noone{

	    mytextbox=instance_create(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+480-144,otext)
		otext.text_info=[
		[arg[0]],
		]
    
	    switch(argument_count){
	        case 0 : break;
	        case 1 : break;
	        case 2 : break;
	        case 3 : break;
	        case 4 : break;
	        case 5 : 
	            if !instance_exists(ochoice)
	            instance_create(240,240,ochoice);
	            with ochoice{
	                menu_max=2
	                option[0]=arg[1]
	                option[1]=arg[2]
	                choice[0]=arg[3]
	                choice[1]=arg[4]
	            }
	            oplayer.mystate=1
	            break;
        
	    }
    
	}
	/*if !instance_exists(myTextbox){
	    mytextbox=noone
	    endCut()
	}*/


}
