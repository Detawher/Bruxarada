if (sprite_index == spr_boss_falso_ataque)
	{
	
	screem_shake(5, 15);
	obj_player.velv = obj_player.jumpSpd*2.5;
	obj_player.toma_dano();
	screem_shake(15,60)
	obj_player.vida--;
	alarm[0] = timer_alarm;
	var som = choose(snd_boss_falso_hit, snd_boss_falso_hit_2, snd_boss_falso_hit_3, snd_boss_falso_hit_4)
	audio_play_sound(som, 3, false);
	estado = noone;
	}
if (sprite_index == spr_boss_falso_porta)
	{
	audio_pause_sound(snd_boss_falso_porta)
	estado =  "porta_aberta";
	}