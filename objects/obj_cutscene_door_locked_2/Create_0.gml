/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();
alpha = 0;
mudei = true;
iluminacao = false;

cutscene = [
	[cutscene_wait, .5],
	[cutscene_play_sound, snd_error, false],
	[cutscene_wait, .7],
	[cutscene_create_dialogo, "door_locked"],
	[cutscene_change_variable, obj_sensor, "_keyboard", "false"],
]