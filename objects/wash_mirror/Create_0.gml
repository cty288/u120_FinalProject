event_inherited()

omirror.washed=true;

text_info=[

]


t_scene_info=[

	[pauseCut],
	[messageCut,"You washed the mirror using the bottle of water in your inventory"],
	[messageCut,"The blood stain got washed away."],
	[removeInventoryCut,owater_full],
	[addInventoryCut,owater_empty, "An empty bottle"],
	[freeCut]
	
];