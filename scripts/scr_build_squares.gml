///scr_build_squares(quantity, room_id)


////
riffle_width = sprite_get_width(spr_riffle);
riffle_height= sprite_get_height(spr_riffle);
square_width = sprite_get_width(spr_square);
square_height= sprite_get_height(spr_square);
border = riffle_width+square_width;
zone_x_a = border;
zone_x_b = room_width - border;
zone_y_a = border;
zone_y_b = room_height - border;
////////////CHECK FOR WINS
ini_open("save.ini");
my_wins = ini_read_real("achievement", "wins", 0);
switch(my_wins){
case 0:

break;
case 1:
egg = ini_read_real("bonus", "crazy_egg", 0);
if(!egg){
ini_write_real("bonus", "crazy_egg", 1);
}

break;
case 2:
the_robot = ini_read_real("bonus", "robot", 0);
if(!the_robot){
ini_write_real("bonus", "robot", 1);
}
break;
case 3:
the_yoyo = ini_read_real("bonus", "yoyo", 0);
if(!the_yoyo){
ini_write_real("bonus", "yoyo", 1);
}
break;
default:
if(my_wins>3){
/////
egg = ini_read_real("bonus", "crazy_egg", 0);
if(!egg){
ini_write_real("bonus", "crazy_egg", 1);
}
////
the_robot = ini_read_real("bonus", "robot", 0);
if(!the_robot){
ini_write_real("bonus", "robot", 1);
}
//////
the_yoyo = ini_read_real("bonus", "yoyo", 0);
if(!the_yoyo){
ini_write_real("bonus", "yoyo", 1);
}

}
}
ini_close();
/////////
//Create crazy egg
ini_open("save.ini");
crazy_egg = ini_read_real("bonus", "crazy_egg", 0);
if(crazy_egg){
instance_create(irandom_range(0+border, room_width-border), irandom_range(0+border, room_height-border), obj_main_ball);
}

//Create Robot

robo = ini_read_real("bonus", "robot", 0);
if(robo){
instance_create(irandom_range(0+border, room_width-border), irandom_range(0+border, room_height-border), obj_robot);
}
//Create_yoyo
yoyo = ini_read_real("bonus", "yoyo", 0);
ini_close();
if(yoyo){
instance_create(irandom_range(0+border, room_width-border), irandom_range(0+border, room_height-border), obj_yoyo);
}


for(i=0;i<argument0; i++){
randy_x = irandom_range(zone_x_a, zone_x_b)
randy_y = irandom_range(zone_y_a, zone_y_b);

//if(distance_to_object(obj_square)>riffle_width/2){
//if(place_free(randy_x, randy_y) && !place_meeting(randy_x+riffle_width/2, randy_y, obj_square)&& !place_meeting(randy_x-riffle_width/2, randy_y, obj_square) && !place_meeting(randy_x, randy_y+riffle_height, obj_square) && !place_meeting(randy_x, randy_y-riffle_height, obj_square)){
squares[i] = instance_create(randy_x, randy_y, obj_square);
//}


}
instance_create(0, 0, obj_pause);