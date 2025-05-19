estado();
#region motimentação
var _obj_colision = [obj_wall, obj_ferrao]
var _chao = place_meeting(x, y + 1, _obj_colision)

#region player toma dano
if (place_meeting(x, y, obj_player) and bbox_bottom <= obj_player.bbox_bottom and dano == false )
{obj_player.toma_dano()}
if (place_meeting(x, y, obj_player) and bbox_bottom >= obj_player.bbox_bottom and dano == false and sprite_index == spr_boss_walk)
{obj_player.toma_dano()}
#endregion

if (place_meeting(x, y, obj_player) and bbox_bottom > obj_player.bbox_bottom and dano == false and sprite_index == spr_boss_idle)
{estado = toma_dano; screem_shake(5, 15) obj_player.velv = obj_player.jumpSpd*1.5;}
if (global.parar == true or instance_exists(obj_par_cutscene) or instance_exists(obj_dialogo) or instance_exists(obj_sensor_cutscene))
{
	sprite_index = spr_boss_idle
	velh = 0;
	velv = 0;
}
if (global.parar == false){
if (!_chao)
{
	if (velv < 2.5)
	{
	velv += grav;
	}
}
}
	
#endregion

if (_lutando == true and _comecou == true)
{
var boss_music = audio_play_sound(snd_retro_castle_track, 1, true);
audio_sound_loop_start(snd_retro_castle_track, 32.101);
audio_sound_loop_end(snd_retro_castle_track, 204.872);
_comecou = false;
}

if (vida <= 0 and vida_2 <= 0)
{estado = estado_morreu}

depth = -bbox_left;