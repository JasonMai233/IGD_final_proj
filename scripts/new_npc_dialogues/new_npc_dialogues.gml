// main difference is new structure
// [0] will be the profile art info, [0][0] is left and [0][1] is right
// for [1] to the end, the structure is composed of [who is speaking, dialogue text, dose the order continue]
// if "dose the order continue" is noone, it means it will automatically goto the next dialogue after continue
	// if a number is stated, it means it will goto that dialogue after continue.
// there is allowed for a 4th element as choices, the choices array are in structure of [choice text, which dialogue it go to if selected].

global.sample_new_dialogue = [	[spr_prof_avatar, spr_prof_shopkeeper],
								//1
								[spr_prof_shopkeeper,"Yo! It's been a while, how's everything going?",noone],
								//2
								[spr_prof_avatar, "You know, nothing special, try to survive in this city", noone],
								//3
								[spr_prof_shopkeeper, "Glad you say that. So... you are here for the chip right?", noone],
								//4
								[spr_prof_avatar, "As you see, yeah", noone],
								//5
								[spr_prof_shopkeeper, "Alright alright. You are lucky, this is the last one in our stock, and there is somebody looking for it. But be careful. This city is no longer safe", noone],
								//6
								[spr_prof_shopkeeper, "Anyway,", noone],
								//7
								[spr_prof_shopkeeper, "Do you have any questions", noone, [["Where should I leave the chip again?", 8],["What's going on in this City", 10], ["I think I am good", 14]]],
								//8
								[spr_prof_avatar, "Where is the place again?", noone],
								//9
								[spr_prof_shopkeeper, "I think you should go North, leave it at the middle bush, right?		Come on... be more serious on your trade...", 7],
								//10
								[spr_prof_avatar, "Do you have any idea about what is going on in this City?", noone],
								//11
								[spr_prof_shopkeeper, "Well... It's just a pretty popular rumour. As you see, there are a lot of people missing, when they are found, they just standing there like a walking dead.", noone],
								//12
								[spr_prof_shopkeeper, "And... some whitnesses said, there is some kind of... Monsters haunting around recently", noone],
								//13
								[spr_prof_shopkeeper, "I know it sounds a bit... random... but anyway, be careful",7],
								//14
								[spr_prof_avatar, "Thanks again, you literally saved my life.", noone],
								//15
								[spr_prof_shopkeeper, "No problem, alright alright, off you go", noone]
							]

global.robot_new_dialogue = [	[spr_prof_avatar, spr_prof_robot],
								//1
								[spr_prof_robot,"The traffic lights are broken...", noone],
								//2
								[spr_prof_robot,"By who? It is a mystery even to us", noone],
								//3
								[spr_prof_robot,"For your safety, I suggest not passing the street right now.", noone],
								//4
								[spr_prof_avatar,"But I really need to cross the street, do you know where should I go?", noone],
								//5
								[spr_prof_robot,"If you really need to pass the street right now...", noone],
								//6
								[spr_prof_robot,"I think those jumpers in the construction site are the only option.", noone]
							]