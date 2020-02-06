///scr_set_sound
ini_open("save.ini");
globalvar globe_music;
globalvar globe_sfx;
globe_music = ini_read_real("options", "music", 1);
globe_sfx = ini_read_real("options", "sfx", 1);
ini_close();