if(place_meeting(x,y,o_PushBlocks) || place_meeting(x,y,camila_player))
{
	state = 1;
}
else
{
	state = 0;
}

image_index = state;
	
if(state == 1)
{
	with(o_PushBlocks)
	{
		x = xstart;
		y = ystart;
	}
}