draw_text(80, 120, "Vida do BOSS: " + string(vida_boss));
// adicionando uma barra de vida para o nosso boss
draw_set_alpha(.5);
draw_rectangle_color(x - 50, y + 50, vida_boss + x - 50, y + 60, c_red, c_green, c_purple, c_yellow, false);
draw_set_alpha(1);
draw_rectangle(x - 50, y + 50, 100 + x - 50, y + 60, true);