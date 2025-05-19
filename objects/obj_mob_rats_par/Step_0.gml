if (global.parar == true and spr_funcionando == true)
	{sprite_index = sprite_idle}
else
	{
	if (place_meeting(x, y, obj_player) and bbox_bottom <= obj_player.bbox_bottom and dano == false and vida > 0)
	{obj_player.toma_dano()}
		
	if (place_meeting(x, y, obj_player) and bbox_bottom > obj_player.bbox_bottom and dano == false and vida > 0)
	{
		toma_dano(); 
		obj_player.velv = obj_player.jumpSpd*1.5;
	}
	
	if (vida <= 0){estado_morreu();}
	if (dano)
	{
	if (aparecendo){image_alpha += 0.1;}
	if (!aparecendo){image_alpha -= 0.1;}

	if (image_alpha <= 0){aparecendo = true}
	if (image_alpha >= 1){aparecendo = false}
	}
		
	if (place_meeting(x, y, obj_wall_mobs))
		{
		if (direc == 0)
			{
				direc = 1;
				
			} else if (direc == 1)
			{
				direc = 0;
			}
		}
		
		if (direc == 0)
		{
		x += vel;
		sprite_index = sprite_walk;
		image_xscale = -1;
		} else if (direc == 1)
		{
		x -= vel;
		sprite_index = sprite_walk;
		image_xscale = 1;
		}
	}