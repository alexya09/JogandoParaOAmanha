margin = 200; // how much space the textbox gets from the edges of the screen
padding = 50; // how much space things inside the textbox get
width = display_get_gui_width() - margin * 2;
height = sprite_height;

x = (display_get_gui_width() - width) / 2;
y = display_get_gui_height() - height - 20;

// Text
text_font = Font7_3;
text_color = c_white;
text_speed = 0.6;
text_x = padding /9;
text_y = padding;
text_width = width - padding * 2;

comecou = false;

if (global.tutorial_exibido) {
    instance_destroy(); // se já foi exibido, destrói o objeto
} else {
    global.tutorial_exibido = true; // marca como exibido
}
