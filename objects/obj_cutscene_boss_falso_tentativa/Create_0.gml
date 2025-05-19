/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();
alpha = 0;
mudei = true;
iluminacao = true;

cutscene = [
	[cutscene_change_sprite, obj_player, spr_bruxa_idle],
	[cutscene_change_variable, obj_player, "image_xscale", "-1"],
	[cutscene_create_dialogo, "boss_false_tentativa"],
	[cutscene_create_dialogo, "boss_false_perguntas"],
]