/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_set_font(ft_MENU);
draw_set_color(c_white);

var dist = 55;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();

var x1 = gui_largura/2;
var y1 = gui_altura/2;

var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);

show_debug_message(m_x);
show_debug_message(m_y);

for(var i=0; i < op_max; i++)
{
// draw_set_halign(fa_center);

/*if(index == i)
{
	draw_set_color(c_purple);
}
else
{
	draw_set_color(c_white); */

 draw_text(x1+dist,y1+(dist*i),opcoes[i]);
}	

draw_set_font(-1);
