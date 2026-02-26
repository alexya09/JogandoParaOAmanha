if (place_meeting(x, y, camila_player)) {
    global.tp_x    = target_x;
    global.tp_y    = target_y;
    global.tp_face = target_face;

    room_goto(target_room);
}
