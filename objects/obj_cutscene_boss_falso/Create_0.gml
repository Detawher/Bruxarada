/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();
alpha = 0;
mudei = true;
iluminacao = true;

cutscene = [
	[cutscene_instance_create, obj_player.x, obj_player.y, "Colisores", obj_target],
	[cutscene_change_variable, obj_camera, "view_target", obj_target],
	[cutscene_move_character, obj_target, 217, obj_player.y, false, 1],
	[cutscene_move_character, obj_target, 0, 10, true, 1],
	[cutscene_create_dialogo, "boss_false"],
	[cutscene_play_sound, snd_roar_boss_false, false],
	[cutscene_move_character, obj_target, 0, -10, true, 1],
	[cutscene_wait, .8],
	[cutscene_move_character, obj_target, 0, 10, true, 1],
	[cutscene_stop_sound, snd_boss_subsolo],
	[cutscene_play_sound, snd_boss_false, false],
	[cutscene_create_dialogo, "boss_false_2"],
	[cutscene_create_dialogo, "boss_false_perguntas"],
]
