
/// Customizable Properties

// Input
confirm_key = vk_enter; // button to press to go to the next page
max_input_delay = 5; // how many frames to ignore input
input_delay = max_input_delay;
up_key = vk_space;
down_key = vk_backspace;

// Position
margin = 200; // how much space the textbox gets from the edges of the screen
padding = 50; // how much space things inside the textbox get
width = display_get_gui_width() - margin * 2;
height = sprite_height;

x = (display_get_gui_width() - width) / 2;
y = display_get_gui_height() - height - 20;

// Text
text_font = ft_dialogo;
text_color = c_white;
text_speed = 0.6;
text_x = padding /9;
text_y = padding;
text_width = width - padding * 2;

//portrait
portrait_x = padding;
portrait_y = 40;

//speaker
speaker_x = padding;
speaker_y = 3;
speaker_font = ft_dialogo;
speaker_color = c_white;
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


/// Methods
/*** Generally you never need to call these manually ***/

// Start a conversation
setTopic = function(topic) {
	actions = global.topics[$ topic];
	current_action = -1;
		
	next();
}

// Move to the next action, or close the textbox if out of actions
next = function() {
	current_action++;
	if (current_action >= array_length(actions)) {
		instance_destroy();
	}
	else {
		actions[current_action].act(id);
	}
}

// Set the text that should be typed out
setText = function(newText) {
	text = newText;
	text_length = string_length(newText);
	text_progress = 0;
}

dialogue_topic = global.dialogue_topic;

if (dialogue_topic == "porta" || dialogue_topic == "Primeiro CP") {
    alarm[0] = room_speed * 2; // Exibe por 2 segundos
}
