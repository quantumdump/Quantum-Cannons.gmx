///scr_set_sound
ini_open("save.ini");
globe_music = ini_read_real("options", "music", 1);
globe_sfx = ini_read_real("options", "sfx", 1);
ini_close();