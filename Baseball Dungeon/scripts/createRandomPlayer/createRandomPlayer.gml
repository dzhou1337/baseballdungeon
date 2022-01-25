// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createRandomPlayer(){
	var randomPlayer = instance_create_layer(0,0,"Instances",obj_player)
	with(randomPlayer){
		race = getRandomRace()
		randomize()

		firstName = getRandomFirstName()
		lastName = getRandomLastName()
		fullName = firstName + " " + lastName

		intelligence = statroll(50, 20)

		//if 0, make a batter, if 1, make a pitcher
		coinflip = irandom(1)

		//make a batter
		if(coinflip == 0){
	
			pitchStuff = 5
			pitchMovement = 5
			pitchControl = 5
			pitchStamina = 20
	
			//Roll for handedness of batter, 10 percent chance for lefty
			handednessRoll = random_range(0,1)
			rightHanded = true
			if (handednessRoll < 0.1){
				rightHanded = false
			}
	
			//Roll for batter stats
			batContact = statrollContact(race)
			batPower = statrollPower(race)
	
			if(rightHanded){
				batContactR = min(100, max(5, batContact - gauss(5,2)))
				batContactL = min(100, max(5, batContact + gauss(5,2)))
				batPowerR = min(100, max(5, batPower - gauss(5,2)))
				batPowerL = min(100, max(5, batPower + gauss(5,2)))
			} else {
				batContactR = min(100, max(5, batContact + gauss(5,2)))
				batContactL = min(100, max(5, batContact - gauss(5,2)))
				batPowerR = min(100, max(5, batPower + gauss(5,2)))
				batPowerL = min(100, max(5, batPower - gauss(5,2)))
			}
	
			batVision = statrollVision(race)
			batBunt = statrollBunt(race)
	
			fielding = statrollFielding(race)
			fieldingStrength = statrollArmStr(race)
			fieldingAccuracy = statroll(50,20)
			//fieldingReaction = statroll(50,20)
	
			runSpeed = statroll(50, 20)
			runStealing = statroll(50, 20)
	
	
			//Roll for fielding position 2:C, 3:1B, 4:2B, 5:3B, 6:SS, 7:LF, 8:CF, 9:RF
			positionRoll = random_range(0,1)
			primaryPosition = 0
			secondaryPositions = ds_list_create()
	
			if (positionRoll < 0.25){
				//roll for CF, C, or SS
				roll3 = irandom(2)
				if (roll3 == 0){
					primaryPosition = 2
					ds_list_add(secondaryPositions, 3)
				}
				if (roll3 == 1){
					primaryPosition = 6
					ds_list_add(secondaryPositions, 4, 5)
				}
				if (roll3 == 2){
					primaryPosition = 8
					ds_list_add(secondaryPositions, 7, 9)
				}
			} else if (positionRoll < .525){
				//roll for 2B, or 3B
				roll2 = irandom(1)
				if (roll2 == 0){
					primaryPosition = 4
					ds_list_add(secondaryPositions, 6)
				}
				if (roll2 == 1){
					primaryPosition = 5
					ds_list_add(secondaryPositions, 6)
				}
			} else {
				//roll for LF, RF, 1B
				roll3 = irandom(2)
				if (roll3 == 0){
					primaryPosition = 7
					ds_list_add(secondaryPositions, 9)
				}
				if (roll3 == 1){
					primaryPosition = 9
					ds_list_add(secondaryPositions, 7)
				}
				if (roll3 == 2){
					primaryPosition = 3
				}
			}
		}

		//make a pitcher
		if(coinflip == 1){
		
			pitchStuff = statroll(50,20)
			pitchMovement = statroll(50,20)
			pitchControl = statroll(50,20)
			pitchStamina = 5 //ADJUSTED LATER, just set here for symmetry with batter stats gen
	
			//Roll for handedness of batter, 10 percent chance for lefty
			handednessRoll = random_range(0,1)
			rightHanded = true
			if (handednessRoll < 0.1){
				rightHanded = false
			}
	
			//Roll for batter stats
			batContact = 5
			batPower = 5
	
			if(rightHanded){
				batContactR = min(100, max(5, batContact - gauss(5,2)))
				batContactL = min(100, max(5, batContact + gauss(5,2)))
				batPowerR = min(100, max(5, batPower - gauss(5,2)))
				batPowerL = min(100, max(5, batPower + gauss(5,2)))
			} else {
				batContactR = min(100, max(5, batContact + gauss(5,2)))
				batContactL = min(100, max(5, batContact - gauss(5,2)))
				batPowerR = min(100, max(5, batPower + gauss(5,2)))
				batPowerL = min(100, max(5, batPower - gauss(5,2)))
			}
	
			batVision = 5
			batBunt = 5
	
			fielding = statroll(50,20)
			fieldingStrength = statroll(50,20)
			fieldingAccuracy = statroll(50,20)
			//fieldingReaction = statroll(50,20)
	
			runSpeed = statroll(50, 20)
			runStealing = 5
	
	
			//Roll for pitching role: 1:SP, 10:RP
			positionRoll = random_range(0,1)
			primaryPosition = 0
			secondaryPositions = ds_list_create()
	
			if (positionRoll < 0.33){
				//adjust stats for SP
				primaryPosition = 1
				pitchStamina = max(50, statroll(70, 20)) //roll good stamina stat with minimum of 50
			} else {
				//adjust stats for RP
				primaryPosition = 10
				pitchStamina = min(30, statroll(20, 5))
				pitchMovement = min(100, pitchMovement + statroll(10,5))
				pitchStuff = min(100, pitchStuff + statroll(10,5))
		
			}
		}
	}
	return randomPlayer
}