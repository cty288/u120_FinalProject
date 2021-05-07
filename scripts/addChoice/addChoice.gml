function addChoice() {
	//use in obects' step event, which does not work for cutscenes. 
	//half donw, not useful.
	//create a choice object once the textbox reaches required page.

	var arg
	var i=0; repeat(argument_count){
	    arg[i]=argument[i]
	    i++
	}

	if (instance_exists(otext) and mytextbox!=noone and interacting and !instance_exists(ocutscene) ){
		
	    if otext.page=arg[0] and otext.sprite_index==sbox2{
    
	    if otext.textcount>=string_length(otext.text) and (otext.sprite_index==sbox2 or otext.sprite_index==sbox5){

	    switch(argument_count){
	        case 0 : break;
	        case 1 : break;
	        case 2 : break;
	        case 3 : break;
	        case 4 : break;
	        case 5 : 
	            if !instance_exists(ochoice) 
	            c= instance_create(camera_get_view_x(view_camera[0])+240,240,ochoice); //change this
	            with c{
	                menu_max=2
	                option[0]=arg[1]
	                option[1]=arg[2]
	                choice[0]=arg[3]
	                choice[1]=arg[4]
	            }
	            oplayer.mystate=1
	            break;
			case 7: 
		            if !instance_exists(ochoice)
		           c= instance_create(camera_get_view_x(view_camera[0])+240,240,ochoice);
					show_debug_message("Dss");
		            with c{
		                menu_max=3
		                option[0]=arg[1]
		                option[1]=arg[2]
						option[2]=arg[3]
		                choice[0]=arg[4]
		                choice[1]=arg[5]
						choice[2]=arg[6]
						
		            }
		            oplayer.mystate=1
	            break;
			case 9: 
					if !instance_exists(ochoice)
		           c= instance_create(camera_get_view_x(view_camera[0])+240,240,ochoice);
		            with c{
		                menu_max=4
		                option[0]=arg[1]
		                option[1]=arg[2]
						option[2]=arg[3]
						option[3]=arg[4]
		                choice[0]=arg[5]
		                choice[1]=arg[6]
						choice[2]=arg[7]
						choice[3]=arg[8]
						
		            }
		            oplayer.mystate=1
			break;
        
	    }
    
	    }
    
	    }
	
	}


}
