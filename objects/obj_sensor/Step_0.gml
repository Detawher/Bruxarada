if (distance_to_object(obj_player) <= 10)
{
	player = true;
	if (type_door == 0){ key = true; obj_player.image_xscale = face_player;}
	if (type_door == 1 && global._interate_key){key = true; obj_player.image_xscale = face_player;};
	if (type_door == 2 && global._interate_key && !instance_exists(obj_par_cutscene))
	{
	var _cutscene = instance_create_layer(x-500,y-500,"Superior",obj_cutscene_door_locked_2);
	obj_player.image_xscale = face_player;
	};
	if (type_door == 3 && global._interate_key && !instance_exists(obj_par_cutscene) and obj_controler._chave_salao_usada == 1)
	{
	key = true; obj_player.image_xscale = face_player;
	}
	if (type_door == 3 && global._interate_key && !instance_exists(obj_par_cutscene) and obj_controler.chave_salao == 0 and obj_controler._chave_salao_usada == 0)
	{
	var _cutscene = instance_create_layer(x-500,y-500,"Superior",obj_cutscene_door_locked);
	obj_player.image_xscale = face_player;
	}
	if (type_door == 3 && global._interate_key && !instance_exists(obj_par_cutscene) and obj_controler.chave_salao == 1 and obj_controler._chave_salao_usada == 0)
	{
	var _cutscene = instance_create_layer(x-500,y-500,"Superior",obj_cutscene_door_open);
	obj_player.image_xscale = face_player;
	}
	if (type_door == 4 && global._interate_key && !instance_exists(obj_par_cutscene) and obj_controler._chave_subsolo_usada == 1)
	{
	key = true; obj_player.image_xscale = face_player;
	}
	if (type_door == 4 && global._interate_key && !instance_exists(obj_par_cutscene) and obj_controler._chave_subsolo_banan == 0 and obj_controler._chave_subsolo_roco == 0 and obj_controler._chave_subsolo_usada == 0)
	{
	var _cutscene = instance_create_layer(x-500,y-500,"Superior",obj_cutscene_door_subsolo_locked);
	obj_player.image_xscale = face_player;
	}
	if (type_door == 4 && global._interate_key && !instance_exists(obj_par_cutscene) and obj_controler._chave_subsolo_usada == 0)
	{
	if (obj_controler._chave_subsolo_banan == 1 and obj_controler._chave_subsolo_roco == 0 or obj_controler._chave_subsolo_banan == 0 and obj_controler._chave_subsolo_roco == 1)
	{
	var _cutscene = instance_create_layer(x-500,y-500,"Superior",obj_cutscene_door_subsolo_locked_2);
	obj_player.image_xscale = face_player;
	}
	}
	if (type_door == 4 && global._interate_key && !instance_exists(obj_par_cutscene) and obj_controler._chave_subsolo_banan == 1 and obj_controler._chave_subsolo_roco == 1 and obj_controler._chave_subsolo_usada == 0)
	{
	var _cutscene = instance_create_layer(x-500,y-500,"Superior",obj_cutscene_door_subsolo_open);
	obj_player.image_xscale = face_player;
	}
}

if (player && key == true && global.parar == false)
{
	global.parar = true;
	var tran = instance_create_layer(0, 0, "Superior", obj_transicao);
	tran.destino = destino;
	tran.destino_x = destino_x;
	tran.destino_y = destino_y;
};



