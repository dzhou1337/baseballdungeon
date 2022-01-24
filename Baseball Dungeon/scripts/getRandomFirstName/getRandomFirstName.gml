// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getRandomFirstName(){
	file = file_text_open_read("Names\\humanfirstnames.txt")
	lineNum = irandom(4)
	firstName = ""
	for(var i = 0; i <= lineNum; i++){
		firstName = file_text_read_string(file)
		file_text_readln(file)
	}
	file_text_close(file)

	return firstName
}