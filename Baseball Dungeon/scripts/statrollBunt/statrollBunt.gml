// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function statrollBunt(argument0){
	switch(argument0){
		case("Human"):
			return statroll(50,40)
			break
		case("Goblin"):
			return statroll(50, 20)
			break
		case("Elf"):
			return statroll(80, 20)
			break
		case("Dwarf"):
			return statroll(35, 20)
			break
		case("Orc"):
			return statroll(20, 20)
			break
		case("Wizard"):
			return statroll(35, 20)
			break
		case("Golem"):
			return statroll(70, 5)
			break
	}
	return 0
}