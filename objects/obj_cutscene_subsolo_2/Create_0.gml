/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();
alpha = 0;
mudei = true;
iluminacao = true;

instance_create_layer(432, 256, "Colisores", obj_wall, 
	{
	image_xscale : 0.5,
	image_yscale : 2.5
	})

cutscene = [
	[cutscene_play_sound, snd_boss_subsolo, true],
]