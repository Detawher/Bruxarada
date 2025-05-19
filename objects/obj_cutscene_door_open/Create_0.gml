/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();
alpha = 0;
mudei = true;
iluminacao = false;

cutscene = [
	[cutscene_wait, .5],
	[cutscene_play_sound, snd_confirm, false],
	[cutscene_wait, .3],
	[cutscene_create_dialogo, "door_open"],
	[cutscene_change_variable, obj_controler, "_chave_salao_usada", "1"],
]