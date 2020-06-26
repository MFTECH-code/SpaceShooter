///@description Fazendo a transição
///@arg destino
///@arg layer

var d = argument0;
var l = argument1;

var tranticao = instance_create_layer(0, 0, l, obj_transicao);
tranticao.destino = d;
