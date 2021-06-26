if(global.step5 < 2){
	if(keyboard_check_pressed(vk_enter)){
		global.step5 += 1;
		show_debug_message(global.step5);
	}
}

if(global.step5 == 3){
	if(keyboard_check_pressed(vk_enter)){
		room_goto(tutorialRoom04);
	}
}