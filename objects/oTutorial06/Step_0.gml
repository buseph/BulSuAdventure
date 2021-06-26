if(global.step8 == 0){
	if(keyboard_check_pressed(vk_enter)){
		global.step8 += 1;
		show_debug_message(global.step7);
	}
}

if(!instance_exists(oCoin111)){
	global.step8 = 2;
}

if(global.step8 == 2){
	if(keyboard_check_pressed(vk_enter)){
		game_end();
	}
}