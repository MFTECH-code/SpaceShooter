obj_control.expa += 2;
global.kills ++;
instance_create_layer(x, y, "Efeitos", obj_explosao02);
instance_destroy(); // Destroi o nosso tiro para ele n passar pelo inimigo
instance_destroy(other); // Destroi o alvo que ele colidiu
