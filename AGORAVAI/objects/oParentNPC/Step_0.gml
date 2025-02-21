/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Verifica a distância entre o NPC e o jogador
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

 balloon_x = x;
 balloon_y = y - sprite_height / 2 - 20; // Ajusta a posição acima da cabeça
