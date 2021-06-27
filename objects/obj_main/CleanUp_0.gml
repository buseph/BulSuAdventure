ini_open("save.ini");

ini_write_real("save", "room", room);
ini_write_real("save", "lives", lives);
ini_write_real("save", "score", score);
ini_write_real("save", "trial", global.PlayerTrial);

ini_close();
