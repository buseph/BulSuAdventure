if((keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right))){
	right = false;
}
	
if((keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left))){
	left = false;
}

if(success == 0){
	if(right == false && left == false){
		success = 1;
		global.jump = true;
	}
}

if(global.jump){
	if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)){
		jumpCount +=1;
	}
}

if(jumpCount == 3){
	success = 2;
}

if(keyboard_check_pressed(vk_enter)){
	room_goto(tutorialRoom2);
}
