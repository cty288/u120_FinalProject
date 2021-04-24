function soundCut(argument0, argument1) {
	//play a sound with volume increasing

	audio_play_sound(argument0,0,argument1)
	audio_sound_gain(argument0,0,0)
	audio_sound_gain(argument0,1,1000)
	if instance_exists(ocutscene){
		with ocutscene
			endCut()
	}


}
