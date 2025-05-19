#region motimentação
var _chao = place_meeting(x, y + 1, _obj_colision)
var _area_mob = place_meeting(x, y, obj_area_mob)

#region sprites_player

if (_chao and !_area_mob and sprite_index == sprite_idle and global._transformate_key and transformacao == true and spr_funcionando == true and global.parar == false)
{
spr_funcionando = false;
_obj_colision = [obj_wall, obj_sensor]
audio_play_sound(snd_transformacao, 1, false);
sprite_index = spr_bruxa_transform;
sprite_idle = spr_ghost_idle;
sprite_walk = spr_ghost_walk;
sprite_fall = spr_ghost_fall;
}
if (_chao and !_area_mob and sprite_index == sprite_idle and global._transformate_key and transformacao == false and spr_funcionando == true and global.parar == false)
{
spr_funcionando = false;
_obj_colision = [obj_wall, obj_sensor, obj_wall_ghost]
audio_play_sound(snd_transformacao, 1, false);
sprite_index = spr_ghost_transform;
sprite_idle = spr_bruxa_idle;
sprite_walk = spr_bruxa_walk;
sprite_fall = spr_bruxa_fall;
}

if (_chao and _area_mob)
{
	if (transformacao == true and global._transformate_key)
	{
	audio_play_sound(snd_error, 3, false);
	}
	 if (transformacao == false and area_mob == false)
	 {
	 velh = 0;
	 velv = 0;
	 spr_funcionando = false;
	 _obj_colision = [obj_wall, obj_sensor, obj_wall_ghost]
	 audio_play_sound(snd_transformacao, 1, false);
	 sprite_index = spr_ghost_transform;
	 sprite_idle = spr_bruxa_idle;
	 sprite_walk = spr_bruxa_walk;
	 sprite_fall = spr_bruxa_fall;
	 area_mob = true;
 }
}
#endregion


if (!global._left and spr_funcionando == true  or !global._right and spr_funcionando == true )
{sprite_index = sprite_idle}

if (global.parar == false){
if (spr_funcionando == true)
{
velh = (global._right - global._left) * vel;
}
if (_chao)
{
jumpCount = 0;
} else
{
 if (jumpCount == 0){jumpCount = 1;};
};

if (global._jump_pressed && jumpCount < jumpMax and transformacao == true)
{
audio_play_sound(snd_player_jump, 2, false);
jumpCount++;
JumpTimer = jumpHoldFrames;
}

if (!global._jump_hold and transformacao == true){JumpTimer = 0;};

if (JumpTimer > 0)
{
velv = jumpSpd;

JumpTimer--;
}

if (_chao){

	if (velh != 0)
	{sprite_index = sprite_walk; image_xscale = sign(velh)}
}else 
{
	if (velv < 0)
	{sprite_index = sprite_jump;}
	else
	{sprite_index = sprite_fall;}
	if (velv < 2.5)
	{
	velv += grav;
	}
	if (velh != 0)
	{image_xscale = sign(velh)}
}
}
#region som_andar
if (sprite_index == sprite_walk && andar == false) 
{
alarm[1] = 30;
andar = true
}
if (_chao and velv >= 2.5)
{var som =choose(snd_walk, snd_walk_3);
audio_play_sound(som, 0, false);};
#endregion
#endregion

#region dano_player
if (vida <= 0 and morreu == false)
{
spr_funcionando = false;
audio_pause_sound(snd_retro_castle_track);
var som = choose(snd_player_die, snd_player_die_2, snd_player_die_3)
audio_play_sound(som, 2, false);
screem_shake(10,190);
sprite_index = spr_bruxa_die;
global.iluminacao = true;
morreu = true;
}

if (dano)
{
if (sound_dano == false)
{
var dano_sound = choose(snd_player_dano, snd_player_dano_2, snd_player_dano_3, snd_player_dano_4, snd_player_dano_5)
audio_play_sound(dano_sound, 2, false);
sound_dano = true;
}
if (aparecendo){image_alpha += 0.1;}
if (!aparecendo){image_alpha -= 0.1;}

if (image_alpha <= 0){aparecendo = true}
if (image_alpha >= 1){aparecendo = false}
}
#endregion
#region dialogos
if distance_to_object(obj_par_npcs) <= 1
{
if global._interate_key and global.parar == false and !instance_exists(obj_par_cutscene)
{
  var _npc = instance_nearest(x,y,obj_par_npcs)
  var _controler_cutscene = instance_create_layer(x-500,y-500,"Superior",obj_controler_cutscene);
  _controler_cutscene.nome_cutscene = _npc.nome;
 }
}
#endregion

depth = -bbox_right;



