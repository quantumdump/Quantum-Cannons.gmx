///scr_menu()
switch(mpos){
case 0:
//Srart
var the_start_sound = start_sounds[irandom_range(0, array_length_1d(start_sounds)-1)];
//TODO hscores the same way
if(globe_sfx){
if(!audio_is_playing(the_start_sound)){

audio_play_sound(the_start_sound, 15, false);
}
}
room_goto(rm_l1);
break;
case 1:
//Highscores
var hscore_sound = hscore_sounds[irandom_range(0, array_length_1d(hscore_sounds)-1)];
if(globe_sfx){
if(!audio_is_playing(hscore_sound)){
audio_play_sound(hscore_sound, 15, false);
}
}
room_goto(rm_highscores);
break;
case 2:
//Options
var options_sound = options_sounds[irandom_range(0, array_length_1d(options_sounds)-1)];
if(globe_sfx){
if(!audio_is_playing(options_sound)){
audio_play_sound(options_sound, 15, false);
}
}
room_goto(rm_options);
break;
case 3:
//Credits
var credits_sound = credits_sounds[irandom_range(0, array_length_1d(credits_sounds)-1)];
if(globe_sfx){
if(!audio_is_playing(credits_sound)){
audio_play_sound(credits_sound, 15, false);
}
}
room_goto(rm_credits);
break;
case 4:
//Quit
game_end();
break;
default: break;

}