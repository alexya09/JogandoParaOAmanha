// STEP EVENT CORRIGIDO

// Atualiza o delay de input
if (input_delay > 0) {
    input_delay--;
    exit;
}

// Verifica teclas
var confirm = keyboard_check_pressed(confirm_key);
var back = keyboard_check_pressed(ord("Q"));

// Se o texto ainda está sendo digitado
if (text_progress < text_length) {
    if (confirm) {
        // Pula para o final do texto
        text_progress = text_length;
        input_delay = max_input_delay;
    } else {
        // Continua digitando letra por letra
        text_progress = min(text_progress + text_speed, text_length);
    }
    exit;
}

// Se o texto terminou de ser exibido
if (confirm) {
    // Última fala: fecha o diálogo
    if (current_action == array_length(actions) - 1) {
        show_debug_message("TERMINOU TEXTO");
        oParentPlayer.canMove = true;
        oTeste.dialogue_active = false;
        instance_destroy();
    } else {
        // Avança para a próxima fala
        next();
        input_delay = max_input_delay;
    }
}
else if (back) {
    // Volta para a fala anterior
    previous();
    input_delay = max_input_delay;
}
