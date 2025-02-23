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
show_debug_message("Vel X: " + string(vel_x) + " Vel Y: " + string(vel_y));



// Colisões 
if (place_meeting(x + vel_x, y, all)) {
    vel_x = 0; // Impede o movimento horizontal em caso de colisão
     show_debug_message("Collision detected in X direction")
}

if (place_meeting(x, y + vel_y, all)) {
    vel_y = 0; // Impede o movimento vertical em caso de colisão
    show_debug_message("Collision detected in Y direction")
}


//Movimento
x += vel_x;
y += vel_y;

// Sprite de movimento (ainda não tenho os sprites dela andando, então tá no idle

if (vel_x > 0) { face = RIGHT;} 
    
if (vel_x < 0) { face = LEFT;}
    
if (vel_y < 0) { face = UP;}
    
if (vel_y > 0) { face = DOWN;}
    
sprite_index = spr_idle [face];
// quando tiver o sprite dela andando troca pelo spr_walk q criar no create
    

// DIALOGO

if (distance_to_object(oParentNPC) <= 10)
{
	if(keyboard_check_pressed(ord("E"))){
		var _npc = instance_nearest(x,y,oParentNPC);
		var _dialogo = instance_create_layer(x,y,"Dialogo",oDialogue);
		_dialogo.npc_nome = _npc.nome;
	}
}

