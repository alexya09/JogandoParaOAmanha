/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


draw_set_font(ft_MENU);
draw_set_color(c_white);

var dist = 50;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();

var x1 = gui_largura/2;
var y1 = gui_altura/2;

var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);

show_debug_message(m_x);
show_debug_message(m_y);

for(var i=0; i < array_length(menu_op); i++)
{

 var y2 = y1+(dist*i);
 var x2 = x1 + dist;
 var index = i;
 
	
 var string_w = string_width(menu_op[i]);
 var string_h = string_height(menu_op[i]);
 
 
 if(point_in_rectangle(m_x,m_y,x1 - string_w / (3/2),y2 - string_h / (3/2), x2 + string_w / (3/2), y2 + string_h / (3/2) ))
 {
	 draw_set_color(c_white);
	 if(mouse_check_button_pressed(mb_left))
	 {
		 if(index == 3)
		{
			instance_deactivate_object(obj_opcoes);
			instance_activate_object(Obj_MENU);
		}	
		
			
	 }		
 }	
 else
 {
	 draw_set_color(c_purple);
 }	 
	 
	 draw_text(x2,y2,menu_op[i]);
}	

draw_set_font(-1);
