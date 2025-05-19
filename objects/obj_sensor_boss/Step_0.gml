var _player = place_meeting(x, y, obj_player);

if (_player)
{
parede = instance_create_layer(228, 200, "Colisores", obj_wall_2,
{
    sprite_index : spr_wall_barreira,
})
parede_2 = instance_create_layer(380, 200, "Colisores", obj_wall_2,
{
    sprite_index : spr_wall_barreira,
})
instance_destroy();
}