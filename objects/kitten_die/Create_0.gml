event_inherited()

global.kitten_died=true;

text_info=[
	["You",g01,"NOO!!!My poor little kitten!!"],
]


t_scene_info=[

	[pauseCut],
	[removeInventoryCut,instance_find(okitten,0)],
	[soundCut,cat_die,false,0],
	[messageCut,"The statue suddenly squeeze kitten"],
	[messageCut,"The kitten dies in front of you"],
	[placeCut,odead_kitten,224,288],
	[talkCut],
	[soundCut,door_open,false,0],
	[waitCut,room_speed],
	[messageCut,"The door in front of you suddenly opens"],
	[freeCut]
	
];