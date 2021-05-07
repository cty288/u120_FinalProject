event_inherited()

obook.opened=true;

text_info=[
	["You",g01,"I opened the book!"],
	["You",g01,"It takes a finger to open this book!"],
	["You",g01,"Fortunately I did not put my own finger in it!"]
]


t_scene_info=[

	[pauseCut],
	[messageCut,"You open the book, a page with flowers fall out and added to the inventory"],
	[addInventoryCut,opage_of_flower,"Page of Flower",true],
	[talkCut],
	[freeCut]
	
];
