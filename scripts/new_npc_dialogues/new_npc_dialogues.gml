// main difference is new structure
// [0] will be the profile art info, [0][0] is left and [0][1] is right
// for [1] to the end, the structure is composed of [who is speaking, dialogue text, dose the order continue]
// if "dose the order continue" is noone, it means it will automatically goto the next dialogue after continue
	// if a number is stated, it means it will goto that dialogue after continue.
// there is allowed for a 4th element as choices, the choices array are in structure of [choice text, which dialogue it go to if selected].

global.sample_new_dialogue = [	[spr_prof_avatar, spr_prof_shopkeeper],
								
								[spr_prof_shopkeeper,"Yo! It's been a while, how's everything going?",noone],
							
								[spr_prof_avatar, "You know, nothing special, try to survive in this city", noone],
							
								[spr_prof_shopkeeper, "Glad you say that. So... you are here for the chip right?", noone],
								
								[spr_prof_avatar, "As you see, yeah", noone],
								
								[spr_prof_shopkeeper, "Alright alright. You are lucky, this is the last one in our stock, and there is somebody looking for it. But be careful. This city is no longer safe", noone],
								
								[spr_prof_shopkeeper, "Anyway,", noone],
								
								[spr_prof_shopkeeper, "Do you have any questions", noone, [["Where should I leave the chip again?", 8],["What's going on in this City", 10], ["I think I am good", 14]]],
							
								[spr_prof_avatar, "Where is the place again?", noone],
							
								[spr_prof_shopkeeper, "I think you should go North, leave it at the middle bush, right?		Come on... be more serious on your trade...", 7],
								
								[spr_prof_avatar, "Do you have any idea about what is going on in this City?", noone],
								
								[spr_prof_shopkeeper, "Well... It's just a pretty popular rumour. As you see, there are a lot of people missing, when they are found, they just standing there like a walking dead.", noone],
							
								[spr_prof_shopkeeper, "And... some whitnesses said, there is some kind of... Monsters haunting around recently", noone],
								
								[spr_prof_shopkeeper, "I know it sounds a bit... random... but anyway, be careful",7],
							
								[spr_prof_avatar, "Thanks again, you literally saved my life.", noone],
								
								[spr_prof_shopkeeper, "No problem, alright alright, off you go", noone]
							]
							