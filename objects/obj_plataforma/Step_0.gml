if (instance_exists(obj_player)){
if (bbox_bottom >= obj_player.bbox_bottom)
{sprite_index = spr_plataforma}
else
{sprite_index = noone}

with(obj_player)
{
if (global._down_key_hold)
{other.sprite_index = noone;}
}
}