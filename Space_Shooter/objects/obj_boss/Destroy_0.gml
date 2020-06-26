// Centralizar as explosão...
var yy = (y - sprite_yoffset) + sprite_height / 2;
// y - sprite_yoffset -> Zera onde esta o centro da imagem
// sprite_height / 2 -> Coloca nosso centro de imgem exatamente no meio

var e = instance_create_layer(x, yy, "Inimigos", obj_explosao01);
e.image_xscale = 2;
e.image_yscale = 2;

scr_transition(rm_menu, "Instances");

audio_stop_all();