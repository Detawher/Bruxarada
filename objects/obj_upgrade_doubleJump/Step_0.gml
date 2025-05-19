var _chao = place_meeting(x, y + velv, obj_wall)

if (_chao){
	if (jump > 0)
	{
	velv = -vel_jump;
	vel_jump--;
	}
}else 
{
	if (velv < 2.5)
	{
	velv += grav;
	}
}

var _player_meting = place_meeting(x, y, obj_player)

if (_player_meting)
{
if (!instance_exists(obj_dialogo)){
	instance_deactivate_object(obj_wall_2);
	obj_camera.view_target = obj_player;
	instance_destroy(obj_target);
  var _dialogo = instance_create_layer(x-500,y-500,"Superior",obj_dialogo);
  _dialogo.npc_nome = "Double_jump"
}
obj_player.jumpMax = 2;
audio_play_sound(snd_upgrade, 3, false);
instance_destroy();
}