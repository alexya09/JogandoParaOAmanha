var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

var _largura = sprite_get_width(sprite_index) * escala_x;
var _altura = sprite_get_height(sprite_index) * escala_y;
var _x_offset = sprite_get_xoffset(sprite_index) * escala_x;
var _y_offset = sprite_get_yoffset(sprite_index) * escala_y;

var _left = x - _x_offset;
var _top = y - _y_offset;
var _right = _left + _largura;
var _bottom = _top + _altura;

var _mouse_em_cima = point_in_rectangle(_mx, _my, _left, _top, _right, _bottom);

if (_mouse_em_cima) {
    // Efeito de passar o mouse (Mouse Enter)
    if (!hovered) {
        image_xscale = escala_x * 1.1;
        image_yscale = escala_y * 0.9;
        escala_texto_x = 1.1;
        escala_texto_y = 0.9;
        hovered = true; 
    }
    
    // Efeito de clique (Left Pressed)
    if (mouse_check_button_pressed(mb_left)) {
        image_xscale = escala_x * 0.3;
        image_yscale = escala_y * 1.3;
        escala_texto_x = 0.3;
        escala_texto_y = 1.3;
        acao();
    }
} else {
    hovered = false;
}


image_xscale = lerp(image_xscale, escala_x, 0.2);
image_yscale = lerp(image_yscale, escala_y, 0.2);

escala_texto_x = lerp(escala_texto_x, 1, 0.1);
escala_texto_y = lerp(escala_texto_y, 1, 0.1);