if(global.step6 == 0){
	if(keyboard_check_pressed(vk_enter)){
		global.step6 += 1;
	}
}

if(global.step6 == 5){
	if(keyboard_check_pressed(vk_enter)){
		room_goto(tutorialRoom05);
	}
}