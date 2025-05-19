draw_set_font(font_pixel);
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_text(x, y, text);
draw_set_halign(fa_left);

if (text_agradecimento == true)
{
draw_sprite_ext(spr_tela_final, 0, 0, 0, 1, 1, 0, c_white, alpha);
draw_set_halign(fa_center);
draw_text_ext_color(_xx, 125, text_2, 1, 1000, c_white, c_white, c_white, c_white, alpha)
}
