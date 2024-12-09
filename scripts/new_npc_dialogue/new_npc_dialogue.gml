// main difference is new structure

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
								[spr_prof_shopkeeper, "Alright, see you then!", -1]
							]