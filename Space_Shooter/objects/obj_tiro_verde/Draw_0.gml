// Melhorias gráficas....
// Quando criamos um draw, ele meio que apaga o sprite que estamos usando...
// para resolver isso desenhamos o nosso sprite no draw...
draw_self();
gpu_set_blendmode(bm_add); // Para aplicas os efeitos
// Dentro desse bloco escreveremos os nossos efeitos...
draw_sprite_ext(sprite_index, sprite_index, x, y, image_xscale + 1, image_yscale, image_angle, cor, .5);
gpu_set_blendmode(bm_normal); // Como se fosse um limite para os efeitos não ficarem bugados

