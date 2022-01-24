// argument0: a race
function statrollContact(argument0){
	switch(argument0){
		case("Human"):
			return statroll(50,40)
			break
		case("Goblin"):
			return statroll(30, 20)
			break
		case("Elf"):
			return statroll(80, 20)
			break
		case("Dwarf"):
			return statroll(65, 20)
			break
		case("Orc"):
			return statroll(40, 20)
			break
		case("Wizard"):
			return statroll(30, 20)
			break
		case("Golem"):
			return statroll(70, 5)
			break
	}
	return 0
}