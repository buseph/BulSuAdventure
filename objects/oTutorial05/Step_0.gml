if(global.step7 == 0){
	if(keyboard_check_pressed(vk_enter)){
		global.step7 += 1;
		show_debug_message(global.step7);
	}
}

if(!instance_exists(oCoin11)){
	global.step7 = 2;
}

if(global.step7 == 2){
	if(keyboard_check_pressed(vk_enter)){
		room_goto(tutorialRoom06);
	}
}