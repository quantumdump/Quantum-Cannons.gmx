///scr_create_riffles()
riffle_width = sprite_get_width(spr_riffle);
riffle_height= sprite_get_height(spr_riffle);
first_riffle_x = irandom_range(room_width/3,room_width/3+(room_width/3));
first_riffle_y = riffle_width/2;
second_riffle_x = irandom_range(room_width/3,room_width/3+(room_width/3));
second_riffle_y = room_height-riffle_width/2;

third_riffle_x = riffle_width/2;
third_riffle_y = irandom_range(room_height/3,room_height/3+(room_height/3));

fourth_riffle_x = room_width - riffle_width/2;
fourth_riffle_y = irandom_range(room_height/3,room_height/3+(room_height/3));
/////////////
riffles[0] = instance_create(first_riffle_x, first_riffle_y, obj_riffle);
riffles[0].active = false;
riffles[0].riffle_id = 1;
//////
//////////////
active_riffle = instance_create(second_riffle_x, second_riffle_y, obj_riffle);
active_riffle.active = true;
active_riffle.riffle_id = 2;
//////
///////////////
riffles[1] = instance_create(third_riffle_x, third_riffle_y, obj_riffle);
riffles[1].active = false;
riffles[1].riffle_id = 3;
//////
//////////////
riffles[2] = instance_create(fourth_riffle_x, fourth_riffle_y, obj_riffle);
riffles[2].active = false;
riffles[2].riffle_id = 4;
//////