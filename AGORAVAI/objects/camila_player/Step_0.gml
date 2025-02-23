/// @description Inserir descrição aqui

// Pegando a entrada do jogador
 up = keyboard_check(vk_up);
 down =  keyboard_check(vk_down);
 right =  keyboard_check(vk_right);
 left =  keyboard_check(vk_left);
 
//Transformando em movimento
move_x = right - left;
move_y = down - up;

// Normalizando a direção para manter velocidade constante na diagonal
if (move_x != 0 || move_y != 0) {
    var length = sqrt(move_x * move_x + move_y * move_y);
    move_x /= length;
    move_y /= length;
}

//Transformando deslocamento em velocidade

vel_x = move_x * vel;
vel_y = move_y * vel;

// Colisões 
if (place_meeting(x + vel_x, y, all)) {
    vel_x = 0; 
     
}

if (place_meeting(x, y + vel_y, all)) {
    vel_y = 0; 
}


//Depth
depth = -bbox_bottom

//Movimento
x += vel_x;
y += vel_y;



//Seleção de Sprites

if ((vel_x != 0) or (vel_y != 0)){
    
    movement = WALK;
}

else {
    
    movement = IDLE;
}



if (vel_x > 0) { face = RIGHT;} 
    
if (vel_x < 0) { face = LEFT;}
    
if (vel_y < 0) { face = UP;}
    
if (vel_y > 0) { face = DOWN;}
    
    
sprite_index = sprite [movement] [face];
   

// DIALOGO

if (distance_to_object(oParentNPC) <= 10)
{
	if(keyboard_check_pressed(ord("E"))){
		var _npc = instance_nearest(x,y,oParentNPC);
		var _dialogo = instance_create_layer(x,y,"Dialogo",oDialogue);
		_dialogo.npc_nome = _npc.nome;
	}
}

