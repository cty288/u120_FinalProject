function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // oNPC
	global.__objectDepths[1] = 0; // oplayer
	global.__objectDepths[2] = 0; // oSolid
	global.__objectDepths[3] = 1; // ocutscene
	global.__objectDepths[4] = 0; // otrigger
	global.__objectDepths[5] = 0; // ointeract
	global.__objectDepths[6] = 0; // object
	global.__objectDepths[7] = 0; // oemote
	global.__objectDepths[8] = 0; // object_interact
	global.__objectDepths[9] = 0; // obackground
	global.__objectDepths[10] = -200; // oshader
	global.__objectDepths[11] = 0; // oview
	global.__objectDepths[12] = 0; // omessage
	global.__objectDepths[13] = 0; // ochoice
	global.__objectDepths[14] = 0; // otext
	global.__objectDepths[15] = 0; // oavatar
	global.__objectDepths[16] = 0; // opause
	global.__objectDepths[17] = 0; // emote_02
	global.__objectDepths[18] = 0; // emote_01
	global.__objectDepths[19] = 0; // oNPC01
	global.__objectDepths[20] = 0; // YONAKA
	global.__objectDepths[21] = 0; // train_out
	global.__objectDepths[22] = 0; // train_in
	global.__objectDepths[23] = 0; // train_npc
	global.__objectDepths[24] = 0; // train_sit
	global.__objectDepths[25] = 0; // choice_exit
	global.__objectDepths[26] = 0; // stationtag
	global.__objectDepths[27] = 0; // block_right
	global.__objectDepths[28] = 0; // block_left
	global.__objectDepths[29] = 0; // otent
	global.__objectDepths[30] = 0; // otree
	global.__objectDepths[31] = 0; // osign
	global.__objectDepths[32] = 0; // ograve01
	global.__objectDepths[33] = 0; // object31
	global.__objectDepths[34] = 0; // choice_sit
	global.__objectDepths[35] = 0; // onpc0201
	global.__objectDepths[36] = 0; // onpc0101


	global.__objectNames[0] = "oNPC";
	global.__objectNames[1] = "oplayer";
	global.__objectNames[2] = "oSolid";
	global.__objectNames[3] = "ocutscene";
	global.__objectNames[4] = "otrigger";
	global.__objectNames[5] = "ointeract";
	global.__objectNames[6] = "object";
	global.__objectNames[7] = "oemote";
	global.__objectNames[8] = "object_interact";
	global.__objectNames[9] = "obackground";
	global.__objectNames[10] = "oshader";
	global.__objectNames[11] = "oview";
	global.__objectNames[12] = "omessage";
	global.__objectNames[13] = "ochoice";
	global.__objectNames[14] = "otext";
	global.__objectNames[15] = "oavatar";
	global.__objectNames[16] = "opause";
	global.__objectNames[17] = "emote_02";
	global.__objectNames[18] = "emote_01";
	global.__objectNames[19] = "oNPC01";
	global.__objectNames[20] = "YONAKA";
	global.__objectNames[21] = "train_out";
	global.__objectNames[22] = "train_in";
	global.__objectNames[23] = "train_npc";
	global.__objectNames[24] = "train_sit";
	global.__objectNames[25] = "choice_exit";
	global.__objectNames[26] = "stationtag";
	global.__objectNames[27] = "block_right";
	global.__objectNames[28] = "block_left";
	global.__objectNames[29] = "otent";
	global.__objectNames[30] = "otree";
	global.__objectNames[31] = "osign";
	global.__objectNames[32] = "ograve01";
	global.__objectNames[33] = "object31";
	global.__objectNames[34] = "choice_sit";
	global.__objectNames[35] = "onpc0201";
	global.__objectNames[36] = "onpc0101";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
