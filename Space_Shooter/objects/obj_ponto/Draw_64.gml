if (room == rm_pontos) {
	draw_set_font(fnt_exibir);
	draw_text(room_width / 2, (room_height / 2) - 20, "Atual recorde")
	draw_text(room_width / 2, room_height / 2, global.maxpontos);
	draw_text(room_width / 2, (room_height / 2) + 20, "Maximo de inimigos abatidos: " +string(global.kills));
}