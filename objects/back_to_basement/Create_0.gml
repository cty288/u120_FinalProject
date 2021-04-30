event_inherited()
touched=false;
text_info=[

	["You",g01,"Where am I..."],
	["You",g01,"Is it the basement...Why it's so dark?"],
	["You",g01,"What happened?... I'm losing my memory..."],
	["You",g01,"There's seems to be a body in front of me..."]

]

t_scene_info=[

	[pauseCut],
	//[messageCut,"Go back to basement?"],
	[choiceCut,"GO back to the basement?","yes","no",go_to_basement,choice_exit],
	[freeCut],

]