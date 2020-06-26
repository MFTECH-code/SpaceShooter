// Se o player for destruido
audio_play_sound(snd_lose, 10, false);
instance_create_layer(x, y, "Efeitos_2", obj_explosao01_player);
energia = 0;
audio_pause_sound(snd_musica_fundo2);
audio_pause_sound(snd_musica_fundo1);

