if(global.step5 == 0){
	if(keyboard_check_pressed(vk_enter)){
		global.step5 += 1;
		show_debug_message(global.step5);
	}
}

if(global.step5 >= 5){
	if(keyboard_check_pressed(vk_enter)){
		global.step5 += 1;
		show_debug_message(global.step5);
	}
}