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
if (place_meeting(x + vel_x, y, obj_collider)) {
    vel_x = 0; 
     
}

if (place_meeting(x, y + vel_y, obj_collider)) {
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
   
var horizontal_movement = vel_x;
var vertical_movement = vel_y;

// DIALOGO

if (distance_to_object(oParentNPC) <= 10)
{
	if(keyboard_check_pressed(ord("E"))){
		var _npc = instance_nearest(x,y,oParentNPC);
		var _dialogo = instance_create_layer(x,y,"Dialogo",oDialogue);
		_dialogo.npc_nome = _npc.nome;
	}
}

// PUSH

var move_speed = 1;

// Movimento básico
var hmove = keyboard_check(vk_right) - keyboard_check(vk_left);
var vmove = keyboard_check(vk_down) - keyboard_check(vk_up);

// Movimentação horizontal
if (hmove != 0) {
    if (!place_meeting(x + hmove * move_speed, y, o_Box1)) {
        x += hmove * move_speed;
    } else {
        // Checando se pode empurrar o bloco
        var block = instance_place(x + hmove * move_speed, y, o_Box1);
        if (block) {
            // Verificando se o bloco pode se mover
            if (!place_meeting(block.x + hmove * move_speed, block.y, o_Box1)) {
                block.x += hmove * move_speed;
                x += hmove * move_speed;
            }
        }
    }
}

// Movimentação vertical
if (vmove != 0) {
    if (!place_meeting(x, y + vmove * move_speed, o_Box1)) {
        y += vmove * move_speed;
    } else {
        // Checando se pode empurrar o bloco
        var block = instance_place(x, y + vmove * move_speed, o_Box1);
        if (block) {
            // Verificando se o bloco pode se mover
            if (!place_meeting(block.x, block.y + vmove * move_speed, o_Box1)) {
                block.y += vmove * move_speed;
                y += vmove * move_speed;
            }
        }
    }
}

  /*  var block = instance_nearest(x, y, o_Box1);

    // Verificando se o bloco está próximo o suficiente
    if (block && point_distance(x, y, block.x, block.y) < 32) {
        var dir_x = sign(block.x - x);
        var dir_y = sign(block.y - y);

        // Puxar horizontalmente
        if (dir_x != 0 && place_free(x - dir_x * move_speed, y) &&
            !place_meeting(block.x - dir_x * move_speed, block.y, o_Box1)) {
            block.x -= dir_x * move_speed;
            x -= dir_x * move_speed;
        }

        // Puxar verticalmente
        if (dir_y != 0 && place_free(x, y - dir_y * move_speed) &&
            !place_meeting(block.x, block.y - dir_y * move_speed, o_Box1)) {
            block.y -= dir_y * move_speed;
            y -= dir_y * move_speed;
        }
    }

*/