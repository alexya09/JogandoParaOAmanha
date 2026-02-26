if (!dialogue_started) {
    startDialogue("tutorial2");
    dialogue_started = true; // variável que você define no Create do objeto
    alarm[0] = room_speed * 3;
}
