event_inherited()



text_info=[
	["You",g01,"So nice to have someone who is actually alive here. Kitten do you want to join me?"],
	["Kitten",s_kitten_face,"*meow meow*"]
]


t_scene_info=[

	[pauseCut],
	[talkCut],
	[addInventoryCut,instance_find(okitten,0),"Kitten",true],
	[messageCut,"The kitten followed you! (The kitten has been added to inventory)"],
	[destroyCut,instance_find(okitten,0)],
	[destroyCut,instance_find(okitten_interact,0)],
	[freeCut]
	
];