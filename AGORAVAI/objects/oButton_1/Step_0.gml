if(place_meeting(x,y,o_PushBlocks) || place_meeting(x,y,oParentPlayer))
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
	if(obj_placapontos.pontuacao >= 1)
	{
		instance_create_layer(185,686,"CAIXAA",oBox1);
		instance_destroy();
	}

}