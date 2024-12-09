// main difference is new structure
// [0] will be the profile art info, [0][0] is left and [0][1] is right
// for [1] to the end, the structure is composed of [who is speaking, dialogue text, dose the order continue]
// if "dose the order continue" is noone, it means it will automatically goto the next dialogue after continue
	// if a number is stated, it means it will goto that dialogue after continue.
// there is allowed for a 4th element as choices, the choices array are in structure of [choice text, which dialogue it go to if selected].

global.sample_new_dialogue = [	[spr_prof_avatar, spr_prof_shopkeeper],
								//1
								[spr_prof_shopkeeper,"hey there young boy! you are here for the chip your mom ordered, right?",noone],
								//2
								[spr_prof_shopkeeper, "there it is on the left, tell her I said hi!", noone],
								//3
								[spr_prof_shopkeeper, "do you have any questions?", noone, [["where should I go?", 4],["what's your name?", 6], ["nope! all good", 8]]],
								//4
								[spr_prof_avatar, "where should I go?", noone],
								//5
								[spr_prof_shopkeeper, "I think you should go North, to the middle bush.", 3],
								//6
								[spr_prof_avatar, "what's your name?", noone],
								//7
								[spr_prof_shopkeeper, "Shop Keeper, first name Shop, last name Keeper.", 3],
								//8
								[spr_prof_avatar, "I think I got everything.", noone],
								//9
								[spr_prof_shopkeeper, "Alright, see you then!", noone]
							]
							