
event_inherited();

//idle
sprite[IDLE, RIGHT] = spr_camila_idle_right;
sprite[IDLE, LEFT] = spr_camila_idle_left;
sprite[IDLE, UP] = spr_camila_idle_up;
sprite[IDLE, DOWN] = spr_camila_idle_down;
//walk
sprite[WALK, RIGHT] = spr_camila_walk_right;
sprite[WALK, LEFT] = spr_camila_walk_left;
sprite[WALK, UP] = spr_camila_walk_up;
sprite[WALK, DOWN] = spr_camila_walk_down;

global.tp_x = -1;
global.tp_y = -1;


if (global.tp_x != -1) {
    x = global.tp_x;
    y = global.tp_y;
    face = global.tp_face;
}

