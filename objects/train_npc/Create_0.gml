event_inherited()

/*addDialog(0,"Girl with lifeless eyes",n0101,"Hate train.")
addDialog(1,"Girl with striking hair",n0201,"I thought you hate bus.")
addDialog(2,"Girl with lifeless eyes",n0102,"Buses are worse.")
addDialog(3,"Girl with striking hair",n0202,"What do you like then?")
addDialog(4,"Girl with lifeless eyes",n0102,"Bikes.")
addDialog(5,"Girl with striking hair",n0102,"Exhausting.")
addDialog(6,"Girl with lifeless eyes",n0102,"Uh....")*/

text_info=[

	["Girl with lifeless eyes",n0101,"Hate train."],
	["Girl with flashy hair",n0201,"I thought you hate bus."],
	["Girl with lifeless eyes",n0102,"Buses are worse."],
	["Girl with flashy hair",n0202,"What do you like then?"],
	["Girl with lifeless eyes",n0102,"Bikes."],
	["Girl with flashy hair",n0202,"Exhausting."],
	["Girl with lifeless eyes",n0102,"Uh...."]
	
	]

t_scene_info=[

	[pauseCut],
	[talkCut],
	[createCut,512,224,onpc0101],
	[createCut,544,224,onpc0201],
	[freeCut]
	
]