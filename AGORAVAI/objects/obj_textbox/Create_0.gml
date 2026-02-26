
/// Customizable Properties

// Input
confirm_key = vk_enter; // button to press to go to the next page
max_input_delay = 5; // how many frames to ignore input
input_delay = max_input_delay;
up_key = vk_up;
down_key = vk_down;

// Position
margin = 200; // how much space the textbox gets from the edges of the screen
padding = 70; // how much space things inside the textbox get
width = display_get_gui_width() - margin * 2;
height = sprite_height;

x = (display_get_gui_width() - width) / 2;
y = display_get_gui_height() - height - 20;

// Text
text_font = ft_dialogo;
text_color = c_white;
text_speed = 0.6;
text_x = padding - 15 ;
text_y = padding - 20;
text_width = width - padding ;

//portrait
portrait_x = padding;
portrait_y = 40;

//speaker
speaker_x = padding;
speaker_y = 3;
speaker_font = ft_dialogo;
speaker_color = c_white;
draw_speaker_name = true;
//options

option_x = padding * 3.4;
option_y = padding * -0.3;
option_spacing = 50;
option_selection_indent = 24;
option_width = 300;
option_height = 40;
option_text_x = 10;
option_text_color = c_white;

/// Private properties
/*** LOOK BUT DO NOT EDIT! ***/
actions = [];
current_action = -1;

text = "";
text_progress = 0;
text_length = 0;

portrait_sprite = -1;
portrait_width = sprite_get_width(Portrait);
portrait_height = sprite_get_height(Portrait);
portrait_side = PORTRAIT_SIDE.PORTRAITLEFT;

enum PORTRAIT_SIDE{
	PORTRAITLEFT,
	PORTRAITRIGHT
}

speaker_name = "";
speaker_width = sprite_get_width(NameBox);
speaker_height = sprite_get_height(NameBox);

options = [];
current_option = 0;
option_count = 0;
draw_box = true;

//image
show_image = false;
current_image_sprite = noone;
current_image_x = 0;
current_image_y = 0;
current_image_alpha = 1;
is_fading_image = false; 
image_fade_speed = 0.05; 

is_current_action_cutscene = false;
auto_advance_delay = 300; // 60 frames = 1 segundo de espera
auto_advance_timer = -1;

dialogue_end_callback = noone;


/// Methods
/*** Generally you never need to call these manually ***/

// Start a conversation
// Start a conversation
setTopic = function(topic) {
    
	actions = global.topics[$ topic];
	current_action = -1;
		
	next();
}

// Move to the next action, or close the textbox if out of actions
next = function() {
    current_action++;

    // ACABOU O DIÁLOGO
    if (current_action >= array_length(actions)) {

        if (is_callable(dialogue_end_callback)) {
            dialogue_end_callback();
        }

        dialogue_end_callback = noone;

        instance_destroy();
        exit;
    }

   
    actions[current_action].act(id);
}


// Set the text that should be typed out (FUNÇÃO UNIFICADA E CORRIGIDA)
setText = function(newText, _is_cutscene_text = false) { 
	text = newText;
	text_length = string_length(newText);
	text_progress = 0;
    
    // Armazena a flag e reseta o timer
    is_current_action_cutscene = _is_cutscene_text; 
    auto_advance_timer = -1; 
}

dialogue_topic = global.dialogue_topic;

if (dialogue_topic == "porta" || dialogue_topic == "Primeiro CP"|| dialogue_topic == "bateu" || dialogue_topic == "FIM") {
    // Isso é um alarme, mantenha se for intencional
	alarm[0] = room_speed * 2; // Exibe por 2 segundos
}

if (instance_exists(oParentPlayer)) {
    oParentPlayer.canMove = false;
}