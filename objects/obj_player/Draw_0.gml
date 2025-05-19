/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self();
if (distance_to_object(obj_par_npcs) <= 1 and !instance_exists(obj_par_cutscene))
{
draw_sprite(spr_bolha_dialogo, 0, obj_par_npcs.x, obj_par_npcs.y)
}
//var tutorial = true;


//if(keyboard_check_pressed(vk_f2))
//{
//	tutorial = true;
//}



//if(tutorial)
//{
//	draw_sprite(Sprite52,0, obj_player.x,obj_player.y+42);
//	draw_text_scribble(obj_player.x-45,obj_player.y-85, "[scale,0.1]frida pode pisar nos inimigos");
//}
