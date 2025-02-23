
draw_self()

if (distance_to_object(camila_player) <= 10)// and global.dialogue) {
 {
    var bx = balloon_x; // Usa as variáveis definidas no Step
    var by = balloon_y;

	var frame = floor(current_time / 100) mod sprite_get_number(tecla_E);
    
	draw_sprite_ext(tecla_E, frame, 210, 150, 3, 3, 0, c_white, 1);
}

