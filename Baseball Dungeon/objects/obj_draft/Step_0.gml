/// @replace cards when pick is made

if (!instance_exists(obj_draft_card)){
	picknumber += 1
	for(var i = 0; i < 3; i++){
		instance_create_layer(288 + 480*i, 256, "Instances", obj_draft_card)
	}
}
