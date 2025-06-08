/*
var interaction_range =10;
var player = instance_nearest(x, y, camila_player); // Substitua "obj_player" pelo nome do objeto do jogador

if (instance_exists(player)) {
    if ((point_distance(x, y, player.x, player.y)) <= interaction_range) {
        player_near = true; // Jogador está próximo
    } else {
        player_near = false; // Jogador está longe
    }
} else {
    player_near = false; // Não há jogador na sala
} 
*/
balloon_x = pos_x;
balloon_y = pos_y;

if (distance_to_object(oParentPlayer) <= 10) {
    if (keyboard_check_pressed(vk_enter)) {
        
        // Verifica se a instância do jogador existe
        if (instance_exists(oParentPlayer)) {
            oParentPlayer.canMove = false;
        }

        dialogoInicio = true;

        // Verifica se o nome da sala é "Fase1"
        if (room_get_name(room) == "Fase1") {
            startDialogue("dicas");
        } else {
            startDialogue("inicial");
        }
    }
}
