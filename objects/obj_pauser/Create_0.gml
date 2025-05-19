width = 768;
height = 13660;
depth = -10000
pos = 0;

op_border = 4;
op_space = 12;



font_pixel = font_add_sprite_ext(spr_fonte, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzÀÁÂÃÇÉÊÍÒÓÔÕÚàáâãçéêíòóôõú!'()+,-_@./%;:=?0123456789", true, 1)

option[0, 0] = "Retomar";
option[0, 1] = "Opções";
option[0, 2] = "Sair";

option[1, 0] = "Tela Cheia: " + global.fullscreen;
option[1, 1] = "Escala da janela: " + global.scale_window;
option[1, 2] = "Efeito Sonoro: " + global.sound_effect;
option[1, 3] = "Música: " + global.sound_music;
option[1, 4] = "Voltar";
audio_play_sound(snd_confirm, 3, false)
op_length = array_length(option);
menu_level = 0;