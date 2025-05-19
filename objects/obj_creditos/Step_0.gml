var _intarage_key = keyboard_check_released(ord("J")) or keyboard_check_released(ord("X")) or keyboard_check_released(vk_enter);
if (keyboard_check_released(vk_escape)){game_end();}
if (_intarage_key)
{
			var tran = instance_create_layer(0, 0, "Superior", obj_transicao_semoplayer);
			tran.destino = rm_tittle;
			audio_play_sound(snd_confirm, 2, false);
			audio_pause_sound(snd_creditos);
			instance_destroy();
}
if (comecou == true)
{
if (y <= -250) {
	text_agradecimento = true;
	if (alpha <= 1){alpha += 0.01;}
}
	else 
	{
	y -= scroll_speed;
	}
}



