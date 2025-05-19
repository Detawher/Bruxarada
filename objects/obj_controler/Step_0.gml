var _esc_key = keyboard_check_released(vk_escape);
var obj_parar_player = instance_exists(obj_dialogo) or instance_exists(obj_transicao) or instance_exists(obj_pauser) or instance_exists(obj_par_cutscene)

#region Teclas
global._up_key = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up);
global._down_key = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down);
global._down_key_hold = keyboard_check(ord("S")) or keyboard_check(vk_down);

global._left = keyboard_check(ord("A")) or keyboard_check(vk_left);
global._right = keyboard_check(ord("D")) or keyboard_check(vk_right) 
global._jump_pressed = keyboard_check_pressed(ord("H")) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
global._jump_hold = keyboard_check(ord("H")) or keyboard_check(vk_space) or keyboard_check(ord("Z")) or keyboard_check(vk_up) or keyboard_check(ord("W"));
global._interate_key = keyboard_check_released(ord("J")) or keyboard_check_released(ord("X")) or keyboard_check_released(vk_enter);
global._transformate_key = keyboard_check_released(ord("K")) or keyboard_check_released(ord("C"));
#endregion

#region pause
if (_esc_key and !obj_parar_player and obj_player.sprite_index == obj_player.sprite_idle)
{
var _tran = instance_create_layer(-32, -32, "Superior", obj_pauser);
}
var obj_nao_pausar = instance_exists(obj_dialogo) or instance_exists(obj_transicao) or instance_exists(obj_par_cutscene)
var sprite_cant_esc = [obj_player.sprite_walk, obj_player.sprite_jump, obj_player.sprite_fall, spr_bruxa_transform, spr_ghost_transform]
if (_esc_key and obj_nao_pausar or _esc_key and obj_player.sprite_index == obj_player.sprite_fall or _esc_key and obj_player.sprite_index == obj_player.sprite_jump or _esc_key and obj_player.sprite_index == obj_player.sprite_walk or _esc_key and obj_player.sprite_index == spr_ghost_transform or _esc_key and obj_player.sprite_index == spr_bruxa_transform)
{audio_play_sound(snd_error, 3, false)}
#endregion
#region parar_player

if (obj_parar_player or obj_player.sprite_index == spr_bruxa_transform or obj_player.sprite_index == spr_ghost_transform or obj_player.sprite_index == spr_bruxa_die)
{
global.parar = true;
} else 
{
global.parar = false;
}
#endregion
#region cutscenes
if (room == rm_saguao and musica == 0 or room == rm_saguao_2 and musica == 0 or room == rm_sala1 and musica == 0 or room == rm_sala_c and musica == 0)
{
audio_play_sound(snd_ambiente, 6, true);
musica = 1;
}
if (room == rm_boss and musica == 1 or room == rm_creditos and musica == 1 or room == rm_subsolo and musica == 1 or room == rm_tittle and musica == 1)
{
audio_pause_sound(snd_ambiente);
musica = 0
}
if (room == rm_saguao and cutscine_1_foi == 0){
	instance_create_layer(x, y, "Superior", obj_cutscene_1)
	cutscine_1_foi = 1;
}
if (room == rm_sala1 and cutscine_ghost_foi == 0){
	instance_create_layer(240, 221, "Colisores", obj_sensor_cutscene,
	{
    image_xscale : 3,
	image_yscale : 0.25,
	obj_cutscene : obj_cutscene_ghost
	})
	instance_create_layer(341, 221, "Colisores", obj_sensor_cutscene,
	{
    image_xscale : 3,
	image_yscale : 0.25,
	obj_cutscene : obj_cutscene_ghost_2
	})
	cutscine_ghost_foi = 1;
}
if (room == rm_boss and boss_jr_foi == 0){
	instance_create_layer(329, 223, "instances", obj_boss_jr)
	instance_create_layer(275, 230, "Colisores", obj_sensor_boss,
	{
    image_xscale : 4.25
	})
	instance_create_layer(275, 230, "Colisores", obj_sensor_cutscene,
	{
    image_xscale : 4.25,
	image_yscale : 0.375,
	obj_cutscene : obj_cutscene_boss_jr
	})
	boss_jr_foi = 1;
}
#endregion