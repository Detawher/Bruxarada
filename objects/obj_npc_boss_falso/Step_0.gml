if (place_meeting(x, y, obj_player) and estado == "porta_aberta")
{
var tran = instance_create_layer(0, 0, "Superior", obj_transicao_semoplayer);
tran.destino = rm_creditos;
}

if (estado == noone)
	{
	sprite_index = spr_boss_falso_idle;
	}
if (!instance_exists(obj_par_cutscene) or !instance_exists(obj_dialogo))
	{
	if (estado == "dano")
	{
	sprite_index = spr_boss_falso_ataque;
	if (!wall_2)
	{
	instance_create_layer(264, 184, "Colisores", obj_wall_2,
		 {
		 image_xscale : 0.5,
		 image_yscale : 7
		 })
	}
	}
	if (estado == "terminou")
	{
	sprite_index = spr_boss_falso_porta;
	instance_destroy(inst_26942C34);
	if (audio_porta == false)
	{
	audio_play_sound(snd_boss_falso_porta, 3, false);
	audio_porta = true;
	}
	if (!instance_exists(obj_luz)){instance_create_layer(x, y, "Superior", obj_luz)}
	if (!wall_2)
	{
	instance_create_layer(264, 184, "Colisores", obj_wall_2,
		 {
		 image_xscale : 0.5,
		 image_yscale : 7
		 })
	}
	}
	if (estado == "porta_aberta")
	{
	sprite_index = spr_boss_falso_porta_aberta;
	}
	}