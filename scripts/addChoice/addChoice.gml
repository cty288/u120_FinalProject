function addChoice() {
	//use in obects' step event, which does not work for cutscenes. 
	//half donw, not useful.
	//create a choice object once the textbox reaches required page.

	var arg
	var i=0; repeat(argument_count){
	    arg[i]=argument[i]
	    i++
	}

	if instance_exists(otext) and mytextbox!=noone{

	    if otext.page=arg[0]{
    
	    if otext.textcount>=string_length(otext.text){
    
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
	                menu_max=1
	                option[0]=arg[1]
	                option[1]=arg[2]
	                choice[0]=arg[3]
	                choice[1]=arg[4]
	            }
	            oplayer.mystate=1
	            break;
        
	    }
    
	    }
    
	    }
	
	}


}
