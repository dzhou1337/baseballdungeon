// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function statroll(argument0, argument1){
	roll = gauss(argument0, argument1)
	
	if (roll > 100){
		roll = 100
	}
	if (roll < 5){
		roll = 5
	}
	return roll
}