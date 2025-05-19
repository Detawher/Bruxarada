var tran = instance_create_layer(0, 0, "Superior", obj_transicao_semoplayer);
tran.destino = rm_tittle;
audio_pause_sound(snd_creditos);
instance_destroy();