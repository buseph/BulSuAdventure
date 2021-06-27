//for(var i=0; i < array_length_1d(menu_items); i++){
//	if(menu_selected != i) draw_set_alpha(0.7);
	
//	draw_sprite_ext(menu_items[i], 0, x, y + 50*i, 0.6, 0.6, 0, c_white, 1);
//	(menu_items[i], 0, x, y + 50*i);
	
//	draw_set_alpha(1);
//}

if(file_exists("save.ini")){
	instance_create_layer(360, 340, "Instances", oContinueBtn);
	image_alpha = 0.7;
}

