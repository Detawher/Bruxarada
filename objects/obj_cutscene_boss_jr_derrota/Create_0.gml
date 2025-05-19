/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();
alpha = 0;
mudei = true;
iluminacao = true;

cutscene = [
	[cutscene_wait, 1],
	[cutscene_instance_create, obj_boss_jr.x, obj_boss_jr.y, "Instances", obj_upgrade_doubleJump],
	[cutscene_play_sound, snd_vida_curada, false],
	[cutscene_change_variable, obj_player, "vida", obj_player.vida_max],
	[cutscene_change_variable, obj_controler, "boss_jr_aconteceu", "1"]
]