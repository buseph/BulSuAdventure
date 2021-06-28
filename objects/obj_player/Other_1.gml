if(global.level == 0){
	room_goto(room1);
	global.gameScore = global.tempScore;
}else if(global.level == 1){
	room_goto(room2);
	global.gameScore = global.tempScore;
}else if(global.level == 2){
	room_goto(room3);
	global.gameScore = global.tempScore;
}else if(global.level == 3){
	room_goto(room4);
	global.gameScore = global.tempScore;
}else if(global.level == 4){
	room_goto(room5);
	global.gameScore = global.tempScore;
}else if(global.level == 5){
	room_goto(room6);
	global.gameScore = global.tempScore;
}else if(global.level == 6){
	room_goto(room7);
	global.gameScore = global.tempScore;
}else if(global.level == 7){
	room_goto(room8);
	global.gameScore = global.tempScore;
}else{
	room_restart();
}
	

