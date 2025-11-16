// Get input
var confirm = keyboard_check_pressed(confirm_key);

// Type out the text
text_progress = min(text_progress + text_speed, text_length);

// Fade da imagem
if (is_fading_image) {
    current_image_alpha -= image_fade_speed;
    current_image_alpha = max(0, current_image_alpha);
    
    if (current_image_alpha == 0) {
        is_fading_image = false;
        show_image = false;
        current_image_sprite = noone;
    }
}

// Delay do input
if (input_delay > 0) {
    input_delay--;
    exit;
}

// Se ainda está digitando e apertou ENTER → skip
if (text_progress < text_length) {
    if (confirm) {
        text_progress = text_length;
    }
    exit;
}

// ------------------------------
// TEXTO COMPLETO (text_progress == text_length)
// ------------------------------
if (text_progress == text_length) {

    // --------------------------
    // TEM OPÇÕES (CHOICE)
    // --------------------------
    if (option_count > 0) {

        // NAVEGAÇÃO ↑ ↓
        var up = keyboard_check_pressed(up_key);
        var down = keyboard_check_pressed(down_key);

        var change = down - up;

        if (change != 0) {
            current_option += change;

            // wrap
            if (current_option < 0)
                current_option = option_count - 1;
            else if (current_option >= option_count)
                current_option = 0;
        }

        // SELEÇÃO (ENTER)
       if (confirm) {
    var option = options[current_option];
    options = [];
    option_count = 0;

    // Libera o movimento quando a escolha for feita
    if (instance_exists(oParentPlayer)) {
        oParentPlayer.canMove = true;
    }

    option.act(id);
}

    }

    // --------------------------
    // NÃO TEM OPÇÕES → NEXT
    // --------------------------
    else if (confirm) {
        next();
    }
}
