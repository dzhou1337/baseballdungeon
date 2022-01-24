/// @description Insert description here
// You can write your code in this editor
show_message("we got it")
file = file_text_open_write("datafiles" + "test.txt")
file_text_write_string(file, "hello")
file_text_close(file)