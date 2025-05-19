width = 768;
height = 13660;
depth = -10000
pos = 0;

op_border = 4;
op_space = 12;



font_pixel = font_add_sprite_ext(spr_fonte, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzÀÁÂÃÇÉÊÍÒÓÔÕÚàáâãçéêíòóôõú!'()+,-_@./%;:=?0123456789", true, 1)

option[0, 0] = "Tentar novamente";
option[0, 1] = "Sair";

audio_play_sound(snd_confirm, 3, false)
op_length = array_length(option);
menu_level = 0;