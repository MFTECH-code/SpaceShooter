///@description treme_tela
///@arg força
///@arg som
///@arg layer

var f = argument0;
var s = argument1;
var l = argument2;

var treme = instance_create_layer(0, 0, l, obj_treme);
treme.forca = f;
treme.som = s;