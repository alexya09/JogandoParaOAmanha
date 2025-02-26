// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function src_collision(){
	
	var obj = argument0;
	
	if(place_meeting(x+horizontal_movement, y,obj))
	{
		while(! place_meeting(x + sign(horizontal_movement),y,obj))
		{
			x += sign(horizontal_movement);
		}
	
		horizontal_movement = 0;
	}

	if(place_meeting(x,y+vertical_movement,obj))
	{
		while(!place_meeting(x,y+sign(vertical_movement),obj))
		{
			y += sign(vertical_movement);
		}
	
		vertical_movement = 0;
	}

}