///scr_pause()
switch(mpos){
case 0:
//Resume
if(audio_is_playing(snd_pause)){
audio_stop_sound(snd_pause);
}
pause = false;
instance_activate_all();


break;
case 1:
//Restart
pause = false;
instance_activate_all();
if(audio_is_playing(snd_pause)){
audio_stop_sound(snd_pause);
}

room_goto(rm_l1);
break;
case 2:
//Go to menu
room_goto(rm_menu);
break;
case 3:
//Quit
game_end();
break;

}