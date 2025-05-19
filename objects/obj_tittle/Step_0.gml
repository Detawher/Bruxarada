if (mudei) and alpha >= 0
{
alpha -= .01;
}

if (press == true and alpha_press <= 1)
{
alpha_press += .01;
}

if (keyboard_check_released(vk_anykey))
{
			var tran = instance_create_layer(0, 0, "Superior", obj_transicao_semoplayer);
			tran.destino = rm_saguao;
			audio_play_sound(snd_confirm, 2, false)
			audio_pause_sound(snd_title);
			instance_destroy();
}