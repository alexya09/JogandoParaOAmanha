/// === INPUT ===
var confirm = keyboard_check_pressed(confirm_key);


/// === TYPING TEXT ===
text_progress = min(text_progress + text_speed, text_length);


/// === IMAGE FADE ===
if (is_fading_image) {
    current_image_alpha -= image_fade_speed;
    current_image_alpha = max(0, current_image_alpha);

    if (current_image_alpha == 0) {
        is_fading_image = false;
        show_image = false;
        current_image_sprite = noone;
    }
}


/// === INPUT DELAY (ANTI-SPAM) ===
if (input_delay > 0) {
    input_delay--;
    exit;
}


/// === SKIP TEXT WHILE TYPING ===
if (text_progress < text_length) {

    if (confirm) {
        text_progress = text_length; // skip
    }

    exit;
}

if (text_progress == text_length) {

    /// =============================================================
    /// 1. OPÇÕES
    /// =============================================================
    if (option_count > 0) {

        var up = keyboard_check_pressed(up_key);
        var down = keyboard_check_pressed(down_key);

        var change = down - up;

        if (change != 0) {
            current_option += change;

            if (current_option < 0)
                current_option = option_count - 1;
            else if (current_option >= option_count)
                current_option = 0;
        }

        if (confirm) {
            var option = options[current_option];
            options = [];
            option_count = 0;

            if (instance_exists(oParentPlayer)) {
               // oParentPlayer.canMove = true;
            }

            option.act(id);
        }

        exit;
    }



    /// =============================================================
    /// 2. CUTSCENE — ENTER TEM PRIORIDADE
    /// =============================================================
    if (is_current_action_cutscene) {

        // ENTER = avançar imediatamente
        if (confirm) {
            next();
            exit;
        }

        // SENÃO, auto-avanço
        if (auto_advance_timer < 0) {
            auto_advance_timer = auto_advance_delay;
        }
        else {
            auto_advance_timer--;

            if (auto_advance_timer <= 0) {
                next();
                exit;
            }
        }

        exit;
    }



    if (confirm) {
        next();
        exit;
    }
}
