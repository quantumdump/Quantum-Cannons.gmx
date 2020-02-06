///scr_build_lives
globalvar my_lives;
bonus = irandom_range(1, LIFE_MAX_SAVERS);
riffle_width = sprite_get_width(spr_riffle);
riffle_height= sprite_get_height(spr_riffle);
square_width = sprite_get_width(spr_square);
square_height= sprite_get_height(spr_square);
border = riffle_width+square_width;
zone_x_a = border;
zone_x_b = room_width - border;
zone_y_a = border;
zone_y_b = room_height - border;

for(i=0;i<bonus; i++){
randy_x = irandom_range(zone_x_a, zone_x_b)
randy_y = irandom_range(zone_y_a, zone_y_b);
//if(place_free(randy_x, randy_y) && !place_meeting(randy_x+riffle_width/2, randy_y, obj_square)&& !place_meeting(randy_x-riffle_width/2, randy_y, obj_square) && !place_meeting(randy_x, randy_y+riffle_height, obj_square) && !place_meeting(randy_x, randy_y-riffle_height, obj_square)){
my_lives[i] = instance_create(randy_x, randy_y, obj_life);
//}
}