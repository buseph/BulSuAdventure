//pause

if(keyboard_check_pressed(vk_escape)){
	global.pause = !global.pause;
	
	if(global.pause){
		//dark layer
		show_debug_message("paused");
		instance_create_layer(0,0, dark_layer, obj_dark);
		instance_create_layer(360, 250, frame_layer, oGamePaused);
		instance_create_layer(360, 450, frame_layer, oPopUpFrame);
		instance_create_layer(280, 450, button_layer, oBtnHome);
		instance_create_layer(360, 450, button_layer, oBtnRestart);
		instance_create_layer(440, 450, button_layer, oBtnContinue);
		
		
	}else{
		instance_destroy(obj_dark)
		instance_destroy(oPopUpFrame);
		instance_destroy(oMenu);
		instance_destroy(oGamePaused);
		
	}
}




