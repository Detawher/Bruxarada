text = "Bruxarada\n\nPROGRAMADOR\nJonathan Freitas\n@Detawher\n\nGRAFICOS\nBruno Fernandes\n@_brubo\n\nMÚSICAS/SFX\nLucas Rodrigues\n@ 4kbeatsmusic\n\nJogo feito para:\nNoNeGameJam";
text_2 = "Obrigado por Jogar";
font_pixel = font_add_sprite_ext(spr_fonte, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzÀÁÂÃÇÉÊÍÒÓÔÕÚàáâãçéêíòóôõú!'()+,-_@./%;:=?0123456789", true, 1)
scroll_speed = .3;

text_agradecimento = false;
alpha = 0;

alarm[0] = 60*5
alarm[1] = 60*155
comecou = false;

obj_camera.view_target = obj_player;
instance_destroy(obj_player);
instance_destroy(obj_controler);
audio_play_sound(snd_creditos, 1, false);

_xx = room_width/2;
x = 5;
y = room_height;





