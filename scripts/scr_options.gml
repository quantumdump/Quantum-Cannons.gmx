///scr_options()
switch(mpos){
case 0:
//Sound
var the_sound_sound = sound_sounds[irandom_range(0, array_length_1d(sound_sounds)-1)];
if(globe_sfx){
if(!audio_is_playing(the_sound_sound)){

audio_play_sound(the_sound_sound, 10, false);
}
}
room_goto(rm_sound);
break;
case 1:
//Language
var lang_sound = language_sounds[irandom_range(0, array_length_1d(language_sounds)-1)];
if(globe_sfx){
if(!audio_is_playing(lang_sound)){

audio_play_sound(lang_sound, 10, false);
}
}
room_goto(rm_language);
break;
case 2:
//Defaults
room_goto(rm_defaults);
break;
case 3:
//Back
room_goto(rm_menu);
break;
case 4:

break;
default: break;

}