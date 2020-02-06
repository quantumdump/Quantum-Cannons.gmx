///scr_set_language(language)
ini_open("save.ini");
current_language=ini_read_string("options","language", "EN");
if(current_language!=argument0){
ini_write_string("options","language", string(argument0));
globe_language = ini_read_string("options","language", "EN");
}

ini_close();

