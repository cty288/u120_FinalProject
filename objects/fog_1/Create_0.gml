/// @description  FOG OPTIONS
global.fObject = YONAKA;  // where light starts (OBJECT) (for example - obj_player)
global.fDistance = 200; // light distance (REAL) (in power of your cellsize)
global.fColor = c_black;  // fog color (STRING or COLOR CODE) (fog color - c_black)
depth=-750

/***************************************************
  FOG 2D (by MCampbell) v 1.2.1 (FIX) (17.09.16)
  
    HOW-TO:
  1.Place fog object anywhere into your room.
  2.If you have multiple objects for fog, go to Draw Event code and type on list (line 4-5) :
    && !collision_line(x,y,global.fObject.x,global.fObject.y,*SOLID_OBJ_NAME*,1,1)
  3.If object is processed by fog object, set it's parent to FOG object.
  
   Thanks for downloading and using.
     Report about bugs.
                  -Mitchell.
 ***************************************************/

/* */
/*  */
