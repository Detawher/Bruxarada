if (_lutando and !instance_exists(obj_pauser) and obj_player.morreu == false)
{
var _xx = camera_get_view_height(view_camera[0]);

draw_sprite_stretched(spr_health_bar_sub, 1, _xx, healthbar_y, (vida_2/vida_max) * health_bar_width, health_bar_height);
draw_sprite_stretched(spr_health_bar, 1, _xx, healthbar_y, (vida/vida_max) * health_bar_width, health_bar_height);
draw_sprite(spr_health_border, 1, _xx, healthbar_y);

}