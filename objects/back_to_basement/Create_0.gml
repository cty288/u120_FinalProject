event_inherited()
touched=false;
text_info=[

	["You",g01,"Where am I..."],

]

t_scene_info=[

	[pauseCut],
	//[messageCut,"Go back to basement?"],
	[choiceCut,"GO back to the basement?","yes","no",go_to_basement,choice_exit],
	[freeCut],

]