var som =choose(snd_walk, snd_walk_2, snd_walk_3, snd_walk4);
audio_play_sound(som, 0, false);
if (sprite_index != sprite_walk){audio_pause_sound(som)}
andar = false;