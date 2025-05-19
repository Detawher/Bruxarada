if surface_exists(sombra_surface){
surface_set_target(sombra_surface);

draw_set_alpha(.6);
draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);

gpu_set_blendmode(bm_subtract);

if instance_exists(obj_tocha)
{
var _num = instance_number(obj_tocha);
for (var i = 0; i < _num; i++)
{
var _inst = instance_find(obj_tocha, i);

draw_set_alpha(.6)
draw_circle(_inst.x, _inst.y - 4, 18 + irandom(1), false);

draw_set_alpha(.2);
draw_circle(_inst.x, _inst.y - 4, 30 + irandom(1), false);
draw_set_alpha(1);
}
}


if instance_exists(obj_player) && global.iluminacao == false
{

draw_set_alpha(.6)
draw_circle(obj_player.x, obj_player.y - 12, 18 + irandom(1), false);

draw_set_alpha(.2);
draw_circle(obj_player.x, obj_player.y - 12, 30 + irandom(1), false);
draw_set_alpha(1);
}

draw_set_alpha(.1);
if global.iluminacao == true{
draw_set_alpha(.1);
} else
{

}
draw_rectangle(0, 0,room_width, room_height, false);



gpu_set_blendmode(bm_normal);
draw_set_alpha(1);


surface_reset_target();
} else {
sombra_surface = surface_create(room_width, room_height);
}

draw_surface(sombra_surface, 0, 0);
depth = -1832;