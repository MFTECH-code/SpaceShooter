// Iniciando variaveis

if (instance_exists(obj_player)) //  Se o nosso player existir...
{
	direction = point_direction(x, y, obj_player.x, obj_player.y); // O tiro deverá seguilo
}
else direction = 270; // Se não, o tiro seguirá reto para baixo
speed = 10;
image_angle = 180; // Como o angulo 0 do nosso tiro é em pé o angulo sera 180
cor = c_purple;

audio_play_sound(snd_tiro_inimigo, 10, false);