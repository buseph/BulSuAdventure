if(!continueButton){
	if(file_exists("save.ini")){
		instance_create_layer(360, 340, "Instances", oContinueBtn);
		show_debug_message("create");
	}
	continueButton = true;
}