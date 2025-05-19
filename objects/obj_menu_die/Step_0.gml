/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var _down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var _accept_key = keyboard_check_released(ord("X")) || keyboard_check_released(vk_enter) || keyboard_check_released(ord("J")) ;

op_length = array_length(option[menu_level])

if (_up_key or _down_key){ audio_play_sound(snd_select, 3, false)}

pos += _down_key - _up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

if _accept_key {
	var _sml = menu_level;
	audio_play_sound(snd_confirm, 3, false)
switch(menu_level) {
		case 0:
	switch(pos) 
	 {
			case 0:
			var tran = instance_create_layer(0, 0, "Superior", obj_transicao_semoplayer);
			tran.destino = rm_saguao;
			audio_pause_sound(snd_gameover);
			instance_destroy();
			break;
	
			case 1:
			game_end();
			break;
	  }
	  break;
 }
	
	op_length = array_length(option[menu_level])
}