if (distance_to_object(camila_player) <= 10 and !global.dialogue) {
    var bubble_x = x + 25;
    var bubble_y = y - 100;

    var frame = floor(current_time / 100) mod sprite_get_number(tecla_E);

    draw_sprite_ext(tecla_E, frame, bubble_x, bubble_y, 3, 3, 0, c_white, 1);
}
