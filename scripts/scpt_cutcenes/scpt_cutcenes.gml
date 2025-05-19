function action_end(){
	with(obj_par_cutscene){
		action++;
		
		if (action >= array_length(cutscene)){
			instance_destroy();
		}
	}
}

function cutscene_wait(_seconds){
	timer++;
	if (timer >= 60 * _seconds){
		timer = 0;
		action_end();
	}
}

function cutscene_move_character(_id, _x, _y, _relative, _spd){
	if (x_dest == -1){
		if (_relative == false){
			x_dest = _x;
			y_dest = _y;
		}else{
			x_dest = _id.x + _x;
			y_dest = _id.y + _y;
		}
	}
		var _xx = x_dest;
		var _yy = y_dest;
		
		with(_id){
			if point_distance(x, y, _xx, _yy) >= _spd {
				var _dir = point_direction(x, y, _xx, _yy);
				var _hspd = lengthdir_x(_spd, _dir);
				var _vspd = lengthdir_y(_spd, _dir);
				
				x += _hspd;
				y += _vspd;
			}else{
				x = _xx;
				y = _yy;
				
				obj_par_cutscene.x_dest = -1;
				obj_par_cutscene.y_dest = -1;
				action_end();
		}
	}
}

function cutscene_play_sound(_snd, _loop){
	audio_play_sound(_snd, 1, _loop);
	action_end();
}

function cutscene_stop_sound(_snd){
	audio_stop_sound(_snd);
	action_end();
}

function cutscene_instance_create(_x, _y, _layer, _obj){
	instance_create_layer(_x, _y, _layer, _obj);
	action_end();
}

function cutscene_instance_destroy(_obj){
	instance_destroy(_obj);
	action_end();
}

function cutscene_change_sprite(_id, _spr){
	_id.image_index = 0;
	_id.sprite_index = _spr;
	action_end();
}

function cutscene_change_variable(_id, _varstring, _value){
	variable_instance_set(_id, _varstring, _value);
	action_end();
}

function cutscene_create_dialogo(nome){
if (!instance_exists(obj_dialogo)){
  var _dialogo = instance_create_layer(x-500,y-500,"Superior",obj_dialogo);
  _dialogo.npc_nome = nome
}
};

function cutscene_change_room(_dest, _dest_x, _dest_y){
	room_goto(_dest)
	obj_player.x = _dest_x;
	obj_player.y = _dest_y;
	action_end();
}
	
function cutscene_change_camera_zoon(_num){
obj_camera.view_width_camera = 341.5/_num;
obj_camera.view_heght_camera = 192/_num;
	action_end();
}
	
function cutscene_screem_shake(_intensidade, _tempo){
	screem_shake(_intensidade, _tempo);
	timer++;
	if (timer >= 60 * _tempo){
		timer = 0;
		action_end();
	}
}