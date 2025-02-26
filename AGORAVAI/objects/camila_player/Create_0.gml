 // Variáveis de direção
 up = noone;
 down = noone;
 right = noone;
 left = noone;
 
 //Variáveis de deslocamento
 move_x = noone;
 move_y = noone;
 
 //Varíaveis de velocidade 
 vel_x = noone;
 vel_y = noone;
 
 //Declaração da velocidade
 vel = 2;
 
//   --                   ANIMAÇÕES DE MOVIMENTO          --

// inicialização da direção
face = DOWN ; 

//inicialização do movimento;
movement = IDLE ;

//idle
sprite[IDLE][RIGHT] = spr_camila_idle_right;
sprite[IDLE][LEFT] = spr_camila_idle_left;
sprite[IDLE][UP] = spr_camila_idle_up;
sprite[IDLE][DOWN] = spr_camila_idle_down;

//Walk 

sprite [WALK][RIGHT] = spr_camila_walk_right;
sprite [WALK][LEFT] = spr_camila_walk_left;
sprite [WALK][UP] = spr_camila_walk_up;
sprite [WALK][DOWN] = spr_camila_walk_down;


