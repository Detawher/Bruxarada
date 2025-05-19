if (sprite_index == spr_boss_hit){estado = estado_preparando_pular; }
if (sprite_index == spr_boss_explosao)
{
	instance_create_layer(0, 0, "Superior", obj_cutscene_boss_jr_derrota);
	instance_destroy()
}