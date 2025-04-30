if(place_meeting(x,y,oBlocksINT) || place_meeting(x,y,oParentPlayer))
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
	if(obj_placapontos3.pontuacao >= 3)
	{
		instance_create_layer(185,236.5,"CAIXAA",oBlocksFLOAT);
		instance_destroy();
	}

}