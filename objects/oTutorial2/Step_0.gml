if(right == true){
	right = false;
}else if(left == true){
	left = false;
}

if(key==2){
	global.tutorialStep = 1;
}

if(!instance_exists(oCoin1))
{
	room_goto(tutorialRoom3);
}