event_inherited()



text_info=[
	["Kitten",s_kitten_face,"*meow meow*"]
]

t_scene_info=[

	[pauseCut],
	[soundCut,bottle_roll,false,0],
	[waitCut,room_speed],
	[talkCut],
	[messageCut,"The kitten searched under the bed, and brings you back an empty bottle."], 
	[addInventoryCut,instance_find(owater_empty,0),"An empty water bottle",false],
	[freeCut]
	
];