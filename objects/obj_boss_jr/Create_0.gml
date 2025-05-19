velh = 0;
velv = 0;
vel = 1;
grav = .3;
vel_jump = 4;

spr_funcionando = true

andar = false;

vida_max = 4;
vida = vida_max;
vida_2 = vida_max;
dano = false;
health_bar_width = 500;
health_bar_height = 48;
healthbar_y = 650;

_lutando = false;

tempo_inv = 90;
_pular = false;
_pulou = false;

_comecou = true;

randomize();
estado = noone;
tempo_estado = 60 * 3;
timer_estado = 0;
destino_x = x;
passeando = true;
xscale = 1;
timer_max = 60*3;
timer = timer_max;

sprite_index = noone;

muda_estado = function(_estado)
{
  tempo_estado--;
  timer_estado = irandom(tempo_estado);

if (timer_estado == tempo_estado or tempo_estado <= 0)
{
estado = _estado[irandom(array_length(_estado)-1)];
tempo_estado = 60 * 3;
}
}

estado_parado = function()
{
	sprite_index = spr_boss_idle;
	velh = 0
	passeando = true;
	muda_estado([estado_passeando]);
	_pular = false
	_pulou = false;
};

estado_passeando = function()
{
	sprite_index = spr_boss_walk;
	if (velh != 0){image_xscale = sign(velh)}
	var _dist = point_distance(x, y, destino_x, y);
	if (_dist < 1)
	{
	destino_x =  random_range(252, 355);
	}
	var _dir = point_direction(x,y, destino_x, y)
	velh = lengthdir_x(vel,_dir)
	
	
	
muda_estado([estado_parado, estado_preparando_pular]);
}

estado_preparando_pular = function()
{
		var _chao = place_meeting(x, y + 1, obj_wall)
		if (_chao)
		{
	velh = 0;
	velv = 0;
	sprite_index = spr_boss_fall;
	timer--;
	if (timer >= 0)
	{estado = estado_pular}
		}
}

estado_pular = function()
{
	velh = 0;
	timer = timer_max;
	var _chao = place_meeting(x, y + 1, obj_wall)
	if (_chao and _pulou == false)
		{
		velv = -vel_jump
		} else
		{
			if (velv < 0)
			{sprite_index = spr_boss_jump; _pulou = true;}
			else
			{sprite_index = spr_boss_fall; _pulou = true;}
	if (_chao and _pulou == true)
	{screem_shake(4,15);estado = estado_parado; _lutando = true; audio_play_sound(snd_boss_fall, 2, false)}
}
}

alavanca = true
estado_morreu = function()
{
audio_pause_sound(snd_retro_castle_track);
if (alavanca == true)
{

audio_play_sound(snd_boss_explosion, 2, false);
}
alavanca = false;
sprite_index = spr_boss_explosao
velh = 0;
velv = 0;
}

estado = estado_preparando_pular;

toma_dano = function()
{
	sprite_index = spr_boss_hit;
	if (dano == false)
	{
	audio_play_sound(snd_boss_dano , 2, false);
	instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_dano);
	}
	velh = 0;
	velv = 0;
	if (dano) return;
	if (vida >= 0){vida--;}
	if (vida < 0){vida_2--;}
	screem_shake(3, 15);
	dano = true;
	alarm[0] = tempo_inv;
}