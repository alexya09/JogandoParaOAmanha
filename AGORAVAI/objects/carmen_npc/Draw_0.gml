draw_self();

if (distance_to_object(camila_player) <= 10) {
    var bx = balloon_x; 
    var by = balloon_y;
    
    var frame = (current_time / 100) % sprite_get_number(teclaENTERanimada);
    
    draw_sprite_ext(teclaENTERanimada, frame, bx-14, by-63, 0.7, 0.7, 0, c_white, 1);
}