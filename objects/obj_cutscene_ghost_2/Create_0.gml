/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();
alpha = 0;
mudei = true;
iluminacao = true;

cutscene = [
	[cutscene_change_variable, obj_player, "spr_funcionando", "false"],
	[cutscene_change_variable, inst_BA0BD58, "image_xscale", "1"],
	[cutscene_move_character, inst_BA0BD58, 392, 176, false, 1],
	[cutscene_change_sprite, obj_player, spr_ghost_walk],
	[cutscene_move_character, obj_player, 344, obj_player.y, false, 1],
	[cutscene_change_sprite, obj_player, spr_ghost_transform],
	[cutscene_play_sound, snd_transformacao, false],
	[cutscene_wait, 1.3],
	[cutscene_change_sprite, obj_player, spr_bruxa_idle],
	[cutscene_change_variable, obj_player, "transformacao", "true"],
	[cutscene_change_variable, obj_player, "_obj_colision", [obj_wall, obj_sensor, obj_wall_ghost]],
	[cutscene_change_variable, obj_player, "sprite_idle", spr_bruxa_idle],
	[cutscene_change_variable, obj_player, "sprite_walk", spr_bruxa_walk],
	[cutscene_change_variable, obj_player, "sprite_fall", spr_bruxa_fall],
	[cutscene_create_dialogo, "ghost_medo"],
	[cutscene_change_variable, obj_player, "spr_funcionando", "true"],
	[cutscene_change_variable, obj_controler, "cutscine_ghost_aconteceu", "1"],
]