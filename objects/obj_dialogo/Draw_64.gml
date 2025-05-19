if inicializar == true {
display_set_gui_size(800, 720)
var _guil = display_get_gui_width();
var _guia = display_get_gui_height();
draw_set_halign(fa_left);
draw_set_valign(fa_top);



var _xx = 0;
var _yy = _guia - 200;
var _c = c_black;
var _sprite = texto_grid[# Infos.Retrato, pagina];
var _texto = string_copy(texto_grid[# Infos.Texto, pagina], 0, caractere);
draw_set_font(font_pixel);


if (texto_grid[# Infos.Lado, pagina] == 0)
 {
draw_sprite_ext(spr_dialogo, 0, _guil/2 , _guia, _guil/96, 216/sprite_height, 0, c_white, 1);
draw_sprite_ext(spr_dialogo, 0, 96 , _guia, 2, 216/sprite_height, 0, c_white, 1);
draw_sprite_ext(spr_dialogo, 0, 96, _yy - 7, 2, .8, 0, c_white, 1);
draw_text(16, _yy - 68, texto_grid[# Infos.Nome, pagina]);
draw_text_ext(_xx + 232, _yy + 4, _texto, 40, _guil - 264);
draw_sprite_ext(_sprite, 0, 95, _guia - 9, 2, 2, 0, c_white, 1);
 } else if (texto_grid[# Infos.Lado, pagina] == 1)
 {
var _stgw = string_width(texto_grid[# Infos.Nome, pagina]);
draw_sprite_ext(spr_dialogo, 0, _guil/2 , _guia, _guil/96, 216/sprite_height, 0, c_white, 1);
draw_sprite_ext(spr_dialogo, 0, _guia - 16 , _guia, 2, 216/sprite_height, 0, c_white, 1);
draw_sprite_ext(spr_dialogo, 0, _guia - 16, _yy - 7, 2, .8, 0, c_white, 1);
draw_text(_guil - 12 - _stgw, _yy - 68, texto_grid[# Infos.Nome, pagina]);
draw_text_ext(_xx + 32, _yy + 4, _texto, 40, _guil - 230);
draw_sprite_ext(_sprite, 0, _guil - 96, _guia - 9, 2, 2, 0, c_white, 1);
 } else if (texto_grid[# Infos.Lado, pagina] == 2)
 {
draw_sprite_ext(spr_dialogo, 0, _guil/2 , _guia, _guil/120, 216/sprite_height, 0, c_white, 1);
draw_text_ext(_xx + 120, _yy + 4, _texto, 40, _guil - 250);
 }
}

if (op_draw == true)
{
	var _opx = _xx + 72;
	var _opy = _yy - 90;
	var _opsep = 70;
	var _opborda = 10;
	
	op_selecionada += global._up_key - global._down_key;
	op_selecionada = clamp(op_selecionada, 0, op_num - 1);
	if (global._up_key or global._down_key){audio_play_sound(snd_select, 4, false);}
	for (var i = 0; i < op_num; i++)
	{
		var _stringw = string_width(op[i]);
		draw_sprite_ext(spr_op_dialogo, 0, _opx, _opy - (_opsep * i), (_stringw + _opborda * 2)/64, 1, 0, c_white, 1);
		draw_text(_opx + _opborda, _opy - (_opsep * i), op[i])
		
		if (op_selecionada == i)
		{
			draw_sprite(spr_op_selector, image_index, _xx + 8, _opy - (_opsep * i) + 8)
		}
		
	}
	if (global._interate_key)
		{
		audio_play_sound(snd_confirm, 4, false);
		var _dialogo = instance_create_layer(x-500,y-500,"Superior",obj_dialogo);
		_dialogo.npc_nome = op_resposta[op_selecionada]
		
		instance_destroy();
		}
}

