if (place_meeting(x,y,camila_player)){
	
	room_goto(target_room);
	camila_player.x = target_x;
	camila_player.y = target_y;
	camila_player.face = target_face;
}
	