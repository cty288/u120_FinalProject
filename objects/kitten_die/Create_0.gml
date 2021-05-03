event_inherited()

global.kitten_died=true;

text_info=[
	["You",g01,"NOO!!!My poor little kitten!!"],
]


t_scene_info=[

	[pauseCut],
	[removeInventoryCut,instance_find(okitten,0)],
	[messageCut,"The statue suddenly squeeze kitten"],
	[messageCut,"The kitten dies in front of you"],
	[talkCut],
	[messageCut,"The door in front of you opens"],
	[freeCut]
	
];