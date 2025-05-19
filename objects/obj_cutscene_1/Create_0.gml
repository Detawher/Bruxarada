/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();
alpha = 0;
mudei = false;
iluminacao = true;

cutscene = [
	[cutscene_wait, 3],
	[cutscene_change_variable, obj_cutscene_1, "mudei", "true"],
	[cutscene_wait, 1],
	[cutscene_create_dialogo, "cutscene_1"],
	[cutscene_change_variable, obj_player, "spr_funcionando", "false"],
	[cutscene_change_sprite, obj_player, spr_bruxa_walk],
	[cutscene_move_character, obj_player, 15, 0, true, 1],
	[cutscene_change_sprite, obj_player, spr_bruxa_idle],
	[cutscene_create_dialogo, "cutscene_11"],
	[cutscene_change_variable, obj_player, "spr_funcionando", "true"],
	[cutscene_change_variable, obj_controler, "cutscine_1_aconteceu", "1"],
]