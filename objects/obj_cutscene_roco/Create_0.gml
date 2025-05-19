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
	[cutscene_move_character, obj_target, 115, obj_player.y, false, 1],
	[cutscene_move_character, obj_target, 0, 30, true, 1],
	[cutscene_create_dialogo, "Roco"],
	[cutscene_move_character, obj_target, obj_player.x, obj_player.y, false, 2],
	[cutscene_change_variable, obj_camera, "view_target", obj_player],
	[cutscene_instance_destroy, obj_target]
]