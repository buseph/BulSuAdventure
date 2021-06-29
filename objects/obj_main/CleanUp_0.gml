ini_open("save.ini");

ini_write_real("save", "room", room);
ini_write_real("save", "lives", global.gameLives);
ini_write_real("save", "score", global.gameScore);
ini_write_real("save", "trial", global.PlayerTrial);
ini_write_real("save", "level", global.level);
ini_write_real("save", "highestScore", global.highestScore);

ini_close();
