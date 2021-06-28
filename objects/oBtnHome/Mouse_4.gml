instance_destroy(obj_dark)
instance_destroy(oPopUpFrame);
instance_destroy(oMenu);
instance_destroy(oGamePaused);
instance_destroy(obj_playerVariable);

show_debug_message("obj_dark destroyed");
show_debug_message("oPopUpFrame destroyed");
show_debug_message("oMenu destroyed");
show_debug_message("oGamePaused destroyed");
show_debug_message("obj_playerVariable destroyed");

room_goto(rm_menu);