if(global.step4 < 2){
	if(keyboard_check_pressed(vk_enter)){
		global.step4 += 1;
		show_debug_message(global.step4);
	}
}

if(global.step4 >= 3){
	if(keyboard_check_pressed(vk_enter)){
		global.step4 += 1;
		show_debug_message(global.step4);
	}
}

if(global.step4 == 5){
	room_goto(tutorialRoom4);
}