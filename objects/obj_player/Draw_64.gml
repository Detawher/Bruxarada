if (!instance_exists(obj_par_cutscene) and !instance_exists(obj_pauser) and !instance_exists(obj_luz) and !instance_exists(obj_transicao))
{
var _xx = 50
repeat(vida)
{
draw_sprite_ext(spr_coracao, image_index, _xx, 70, 0.2, 0.2, image_angle, c_white, 1)
_xx += 60;
}
}


