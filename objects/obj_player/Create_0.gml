_obj_colision = [obj_wall, obj_sensor, obj_wall_ghost]

velh = 0;
velv = 0;
vel = 1.7;
grav = .3;
jumpSpd = -2.5;
jumpMax = 1;
jumpCount = 0;
jumpHoldFrames = 10;
JumpTimer = 0;


spr_funcionando = true

andar = false;
sound_dano = false

vida_max = 4;
vida = vida_max;
morreu = false;
dano = false;
tempo_inv = 60;
aparecendo = true;

transformacao = true
area_mob = false;

sprite_idle = spr_bruxa_idle
sprite_walk = spr_bruxa_walk
sprite_jump = spr_bruxa_jump;
sprite_fall = spr_bruxa_fall;


toma_dano = function()
{
	if (dano) return;
	if (vida > 0){vida--;}
	screem_shake(5, 15);
	dano = true;
	alarm[0] = tempo_inv;
}