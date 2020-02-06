///scr_get_language()
ini_open("save.ini");
globe_language = ini_read_string("options","language", string("EN"));
ini_close();

