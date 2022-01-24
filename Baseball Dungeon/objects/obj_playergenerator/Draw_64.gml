/// @description Insert description here
// You can write your code in this editor

draw_text(10, 10, race)
draw_text(10, 30, name)
if(rightHanded){
	draw_text(150, 30, "Righty")
} else {
	draw_text(150, 30, "Lefty")
}
draw_text(10, 50, "Intelligence: " + string(intelligence))

draw_text(10, 70, "Stuff: " + string(pitchStuff))
draw_text(10, 90, "Movement: " + string(pitchMovement))
draw_text(10, 110, "Control: " + string(pitchControl))
draw_text(10, 130, "Stamina: " + string(pitchStamina))

draw_text(150, 70, "Contact R: " + string(batContactR))
draw_text(150, 90, "Contact L: " + string(batContactL))
draw_text(150, 110, "Power R: " + string(batPowerR))
draw_text(150, 130, "Power L: " + string(batPowerL))
draw_text(150, 150, "Vision: " + string(batVision))
draw_text(150, 170, "Bunt: " + string(batBunt))

draw_text(300, 70, "Fielding: " + string(fielding))
draw_text(300, 90, "Arm Strength: " + string(fieldingStrength))
draw_text(300, 110, "Arm Accuracy: " + string(fieldingAccuracy))
draw_text(300, 130, "Speed: " + string(runSpeed))
draw_text(300, 150, "Stealing: " + string(runStealing))



/*pitchMovement = 50
pitchControl = 50
pitchStamina = 50

rightHanded = true

batContact = 50
batPower = 50

batContactR = 50
batContactL = 50
batPowerR = 50
batPowerL = 50

batVision = 50
batBunt = 50
	
fielding = 50
fieldingStrength = 50
fieldingAccuracy = 50
//fieldingReaction = 50

runSpeed = 50
runStealing = 50