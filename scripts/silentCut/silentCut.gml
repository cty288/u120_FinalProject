function silentCut(argument0) {
	//stop a sound with volume decreasing

	audio_sound_gain(argument0,0,250)
	if audio_sound_get_gain(argument0)=0{
		audio_stop_sound(argument0)
		if instance_exists(ocutscene){
			with ocutscene
				endCut()
	        }
	}


}
