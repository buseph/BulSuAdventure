if(global.gameOver){
	//dark layer
	show_debug_message("game over");
	instance_create_layer(0,0, dark_layer, obj_dark);
	instance_create_layer(360, 250, gameOver_layer, oGameOverText);
	instance_create_layer(360, 450, gameOver_layer, oPopUpFrame1);
	instance_create_layer(360, 450, gameOverBtn_layer, oBtnHome1);
	instance_destroy(obj_main);

	
	if(file_exists("save.ini")){
		file_delete("save.ini");
		show_debug_message("save.ini deleted");
	}
	exit;      		
}else{
	instance_destroy(obj_dark1)
	instance_destroy(oGameOverText);	
	instance_destroy(oBtnHome1);
	instance_destroy(oPopUpFrame1);
	exit;
}


