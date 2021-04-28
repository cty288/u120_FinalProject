event_inherited()


text_info=[
	["You",g01,"Why is the smell of blood on the key so familiar?"],
]


t_scene_info=[

	[pauseCut],
	[messageCut,"You dipped the key in the blood, now it turns into a bloody key!"],
	[removeInventoryCut,okey],
	[addInventoryCut,obloody_key,"Bloody key"],
	[talkCut],
	[freeCut]
	
];
