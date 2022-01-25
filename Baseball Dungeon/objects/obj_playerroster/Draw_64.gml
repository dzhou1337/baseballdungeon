for(var i = 0; i < ds_list_size(roster); i++){
	current_player = ds_list_find_value(roster, i)
	draw_text(20, 500 + i*20, current_player.fullName)
}
