draw_set_color(#081820);
draw_set_alpha(alpha);
draw_rectangle(-1, -1, view_wport[0] + 1, view_hport[0] + 1, false);

draw_set_color(-1);
draw_set_alpha(1);

if (press == true)
{
draw_set_halign(fa_center);
draw_set_font(font_pixel);
draw_sprite_ext(spr_menu, 0, 5, _yy, 7.5, 0.8, 0, c_white, alpha_press);
draw_text_color(_xx, _yy, "Pressione qualquer tecla", c_white, c_white, c_white, c_white, alpha_press)
}






