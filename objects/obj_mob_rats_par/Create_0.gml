direc = 0;
vel = 0.7;

sprite_walk = spr_rat_walk;
sprite_idle = spr_rat_idle;
spr_funcionando = true;

vida = 1;
aparecendo = true
dano = false;
tempo_inv = 15;
morreu = true;

sprite_index = noone;

toma_dano = function()
{
	if (dano == false)
	{
	audio_play_sound(snd_rat_dano , 4, false);
	}
	if (dano) return;
	if (vida > 0){
		vida--;
		instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_dano);
		}
	screem_shake(5, 15);
	dano = true;
	alarm[0] = tempo_inv;
}

estado_morreu = function()
{
if (morreu)
{
audio_play_sound(snd_boss_explosion, 2, false);
morreu = false;
}
sprite_index = spr_rat_die;
direc = 3;
velh = 0;
velv = 0;
}