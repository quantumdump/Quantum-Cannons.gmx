//scr_default_all()
ini_open("save.ini");
ini_write_real("options", "music", 1);
ini_write_real("options", "sfx", 1);
ini_write_string("options", "language", "EN");
///////
ini_write_real("achievement", "wins", 0);
///////
ini_write_real("bonus", "crazy_egg", 0);
ini_write_real("bonus", "robot", 0);
ini_write_real("bonus", "yoyo", 0);
ini_close();
highscore_clear();