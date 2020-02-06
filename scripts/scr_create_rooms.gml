///scr_create_rooms(level)
scr_control();
globalvar my_room;
globalvar msg;
msg="";

globalvar bullet_direction;
globalvar weapon;
globalvar squares;
bullet_direction=0;
globalvar active_riffle;
globalvar riffles;


my_room = room_add();
room_set_width(my_room, MY_ROOM_WIDTH);
room_set_height(my_room, MY_ROOM_HEIGHT);
room_set_persistent(my_room, true);
scr_create_riffles();
scr_build_squares(FIRST_LEVEL_SQUARES_QUANT+ (FIRST_LEVEL_SQUARES_QUANT/2)*argument0);
scr_build_lives();
scr_status_bar();