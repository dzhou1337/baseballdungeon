// argument0: a race
function statrollPower(argument0){
	switch(argument0){
		case("Human"):
			return statroll(50,40)
			break
		case("Goblin"):
			return statroll(65, 20)
			break
		case("Elf"):
			return statroll(20, 20)
			break
		case("Dwarf"):
			return statroll(80, 20)
			break
		case("Orc"):
			return statroll(80, 20)
			break
		case("Wizard"):
			return statroll(20, 20)
			break
		case("Golem"):
			return statroll(70, 5)
			break
	}
	return 0
}