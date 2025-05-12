
//draw_self()

if (distance_to_object(camila_player) <= 50)// and global.dialogue) {
 {
    var bx = balloon_x; // Usa as variáveis definidas no Step
    var by = balloon_y;

	var frame = floor(current_time / 100) mod sprite_get_number(tecla_E);
    
	draw_sprite_ext(pergunta, 0, bx-15, by-70, 3, 3, 0, c_white, 1);
}

