if (variable_global_exists("tp_x") && global.tp_x != -1) {
    x = global.tp_x;
    y = global.tp_y;
    face = global.tp_face;

    // limpar
    global.tp_x = -1;
}
