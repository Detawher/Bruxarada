alpha = 1;
mudei = true;
audio_play_sound(snd_gameover, 1, false);
obj_camera.view_target = obj_player;
instance_destroy(obj_controler);
instance_destroy(obj_player);



