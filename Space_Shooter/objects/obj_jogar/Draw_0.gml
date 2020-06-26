draw_self();

draw_set_color(c_blue);
draw_set_font(fnt_exibir);
// Alinhando o texto...
draw_set_halign(fa_middle); // Horizontal
draw_set_valign(fa_center); // Vertical
image_blend = c_fuchsia;
draw_text(x, y, texto);
draw_set_color(c_white); // Sempre voltar a cor original para não alterar todos os textos
