if (distance_to_object(obj_player) <= 5 and obj_player.sprite_index != obj_player.sprite_fall)
{
instance_create_layer(x, y, "Superior", obj_cutscene)
instance_destroy();
}