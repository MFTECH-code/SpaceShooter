draw_self();
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, sprite_index, x, y, image_xscale, image_yscale, image_angle, cor, .5);
gpu_set_blendmode(bm_normal);
