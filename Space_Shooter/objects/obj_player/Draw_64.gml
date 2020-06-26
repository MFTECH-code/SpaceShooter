draw_set_font(fnt_exibir);
draw_set_halign(fa_center);


draw_text(70, 80, "Energia: " + string(obj_player.energia)); // Mostra energia...
draw_text(70, 100, "Vida: " + string(vida));

var n = 1;
repeat(vida) // Mostra a nossa vida
{
	draw_sprite_ext(image_index, image_index, 30 * n, 575, .3, .3, image_angle, c_white, .7);
	n ++;
}

var n = 1;
repeat(qtd_escudo) //  Mostra a quantidade de escudos que podemos usar
{
	draw_sprite_ext(sprite11, 0, 30 * n, 560, .2, .2, image_angle, c_white, .7);
	n ++;
}
