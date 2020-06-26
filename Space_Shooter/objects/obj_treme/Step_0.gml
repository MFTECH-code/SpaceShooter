// Bora treme essa bagaça

var camx = irandom_range(-forca, forca); // Ele vai pegar um número aleatorio entre -forca e forca...
var camy = irandom_range(-forca, forca); // Se forca for -5 a câmera vai se mover de -5 até 5...

// Aplicando
camera_set_view_pos(view_camera[0], camx, camy);
// Diminuindo a força da tremida
forca *= .9;

// Tocando o som
if (som != noone) {
	audio_play_sound(som, 5, false); // Toca o som...
	som = noone; // Paramos o som
}