/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


op_length = array_length(option[menu_level])


if (global._down_key or global._up_key){ audio_play_sound(snd_select, 3, false)}

pos += global._down_key - global._up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

if global._interate_key {
	var _sml = menu_level;
	audio_play_sound(snd_confirm, 3, false)
switch(menu_level) {
		case 0:
	switch(pos) 
	 {
			case 0:
			obj_player.velv = obj_player.grav;
			instance_destroy();
			global._interate_key = false;
			break;
	
			case 1:
			menu_level = 1;
			break;
	
			case 2:
			game_end()
			break;
	  }
	  break;
	  
	  case 1:
	  switch(pos)
	  {
			  case 0:
			  if (window_get_fullscreen()) 
			  {
			  window_set_fullscreen(false);
			  global.fullscreen = "Não";
			  global.scale_window = "x5";
			  option[1, 0] = "Tela Cheia:" + global.fullscreen;
			  option[1, 1] = "Escala da janela:" + global.scale_window;
			  obj_camera.resolution_window_scale = 5;
			  window_set_size(global.view_width * obj_camera.resolution_window_scale,global.view_heght * obj_camera.resolution_window_scale)
			  } else
			  {
			  window_set_fullscreen(true);
			  global.fullscreen = "Sim";
			  global.scale_window = "x5";
			  option[1, 0] = "Tela Cheia:" + global.fullscreen;
			  option[1, 1] = "Escala da janela:" + global.scale_window;
			  obj_camera.resolution_window_scale = 5;
			  window_set_size(global.view_width * obj_camera.resolution_window_scale,global.view_heght * obj_camera.resolution_window_scale)
			  }
			  break;
			  
			   case 1:
			   if (global.scale_window == "x2" && !window_get_fullscreen())
			   {
			   obj_camera.resolution_window_scale = 3;
			   global.scale_window = "x3";
			   option[1, 1] = "Escala da janela:" + global.scale_window;
			   window_set_size(global.view_width * obj_camera.resolution_window_scale,global.view_heght * obj_camera.resolution_window_scale)
			   return
			   }
			   if (global.scale_window == "x3" && !window_get_fullscreen())
			   {
			   obj_camera.resolution_window_scale = 4;
			   global.scale_window = "x4";
			   option[1, 1] = "Escala da janela:" + global.scale_window;
			   window_set_size(global.view_width * obj_camera.resolution_window_scale,global.view_heght * obj_camera.resolution_window_scale)
			   return
			   }
			   if (global.scale_window == "x4" && !window_get_fullscreen())
			   {
			   obj_camera.resolution_window_scale = 5;
			   global.scale_window = "x5";
			   option[1, 1] = "Escala da janela:" + global.scale_window;
			   window_set_size(global.view_width * obj_camera.resolution_window_scale,global.view_heght * obj_camera.resolution_window_scale)
			   return
			   }
			   if (global.scale_window == "x5" && !window_get_fullscreen())
			   {
			   obj_camera.resolution_window_scale = 2;
			   global.scale_window = "x2";
			   option[1, 1] = "Escala da janela:" + global.scale_window;
			   window_set_size(global.view_width * obj_camera.resolution_window_scale,global.view_heght * obj_camera.resolution_window_scale)
			   return
			   }
			  break;
			  
			   case 2:
			   if (global.sound_effect == "0%")
			   {
			   audio_group_set_gain(audiogroup_sound_effect, .1, 0);
			   global.sound_effect = "10%"
			   option[1, 2] = "Efeito Sonoro: " + global.sound_effect;
			   return
			   }
			   if (global.sound_effect == "10%")
			   {
			   audio_group_set_gain(audiogroup_sound_effect, .2, 0);
			   global.sound_effect = "20%"
			   option[1, 2] = "Efeito Sonoro: " + global.sound_effect;
			   return
			   }
			   if (global.sound_effect == "20%")
			   {
			   audio_group_set_gain(audiogroup_sound_effect, .3, 0);
			   global.sound_effect = "30%"
			   option[1, 2] = "Efeito Sonoro: " + global.sound_effect;
			   return
			   }
			   if (global.sound_effect == "30%")
			   {
			   audio_group_set_gain(audiogroup_sound_effect, .4, 0);
			   global.sound_effect = "40%"
			   option[1, 2] = "Efeito Sonoro: " + global.sound_effect;
			   return
			   }
			   if (global.sound_effect == "40%")
			   {
			   audio_group_set_gain(audiogroup_sound_effect, .5, 0);
			   global.sound_effect = "50%"
			   option[1, 2] = "Efeito Sonoro: " + global.sound_effect;
			   return
			   }
			   if (global.sound_effect == "50%")
			   {
			   audio_group_set_gain(audiogroup_sound_effect, .6, 0);
			   global.sound_effect = "60%"
			   option[1, 2] = "Efeito Sonoro: " + global.sound_effect;
			   return
			   }
			   if (global.sound_effect == "60%")
			   {
			   audio_group_set_gain(audiogroup_sound_effect, .7, 0);
			   global.sound_effect = "70%"
			   option[1, 2] = "Efeito Sonoro: " + global.sound_effect;
			   return
			   }
			   if (global.sound_effect == "70%")
			   {
			   audio_group_set_gain(audiogroup_sound_effect, .8, 0);
			   global.sound_effect = "80%"
			   option[1, 2] = "Efeito Sonoro: " + global.sound_effect;
			   return
			   }
			   if (global.sound_effect == "80%")
			   {
			   audio_group_set_gain(audiogroup_sound_effect, .9, 0);
			   global.sound_effect = "90%"
			   option[1, 2] = "Efeito Sonoro: " + global.sound_effect;
			   return
			   }
			   if (global.sound_effect == "90%")
			   {
			   audio_group_set_gain(audiogroup_sound_effect, 1, 0);
			   global.sound_effect = "100%"
			   option[1, 2] = "Efeito Sonoro: " + global.sound_effect;
			   return
			   }
			   if (global.sound_effect == "100%")
			   {
			   audio_group_set_gain(audiogroup_sound_effect, 0, 0);
			   global.sound_effect = "0%"
			   option[1, 2] = "Efeito Sonoro: " + global.sound_effect;
			   return
			   }
			  break;
			  
			   case 3:
			   if (global.sound_music == "0%")
			   {
			   audio_group_set_gain(audiogroup_music, .1, 0);
			   global.sound_music = "10%"
			   option[1, 3] = "Música: " + global.sound_music;
			   return
			   }
			   if (global.sound_music == "10%")
			   {
			   audio_group_set_gain(audiogroup_music, .2, 0);
			   global.sound_music = "20%"
			   option[1, 3] = "Música: " + global.sound_music;
			   return
			   }
			   if (global.sound_music == "20%")
			   {
			   audio_group_set_gain(audiogroup_music, .3, 0);
			   global.sound_music = "30%"
			   option[1, 3] = "Música: " + global.sound_music;
			   return
			   }
			   if (global.sound_music == "30%")
			   {
			   audio_group_set_gain(audiogroup_music, .4, 0);
			   global.sound_music = "40%"
			   option[1, 3] = "Música: " + global.sound_music;
			   return
			   }
			   if (global.sound_music == "40%")
			   {
			   audio_group_set_gain(audiogroup_music, .5, 0);
			   global.sound_music = "50%"
			   option[1, 3] = "Música: " + global.sound_music;
			   return
			   }
			   if (global.sound_music == "50%")
			   {
			   audio_group_set_gain(audiogroup_music, .6, 0);
			   global.sound_music = "60%"
			   option[1, 3] = "Música: " + global.sound_music;
			   return
			   }
			   if (global.sound_music == "60%")
			   {
			   audio_group_set_gain(audiogroup_music, .7, 0);
			   global.sound_music = "70%"
			   option[1, 3] = "Música: " + global.sound_music;
			   return
			   }
			   if (global.sound_music == "70%")
			   {
			   audio_group_set_gain(audiogroup_music, .8, 0);
			   global.sound_music = "80%"
			   option[1, 3] = "Música: " + global.sound_music;
			   return
			   }
			   if (global.sound_music == "80%")
			   {
			   audio_group_set_gain(audiogroup_music, .9, 0);
			   global.sound_music = "90%"
			   option[1, 3] = "Música: " + global.sound_music;
			   return
			   }
			   if (global.sound_music == "90%")
			   {
			   audio_group_set_gain(audiogroup_music, 1, 0);
			   global.sound_music = "100%"
			   option[1, 3] = "Música: " + global.sound_music;
			   return
			   }
			   if (global.sound_music == "100%")
			   {
			   audio_group_set_gain(audiogroup_music, 0, 0);
			   global.sound_music = "0%"
			   option[1, 3] = "Música: " + global.sound_music;
			   return
			   }
			  break;
			  
			   case 4:
			   menu_level = 0;
			   pos = 1;
			  break;
	  }
	  break;
 }
	
	op_length = array_length(option[menu_level])
}