// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getRandomLastName(){
	
	filelast = file_text_open_read("Names\\humanlastnames.txt")
	lineNum = irandom(4)
	lastName = ""
	for(var i = 0; i <= lineNum; i++){
		lastName = file_text_read_string(filelast)
		file_text_readln(filelast)
	}
	file_text_close(filelast)

	
	return lastName
}