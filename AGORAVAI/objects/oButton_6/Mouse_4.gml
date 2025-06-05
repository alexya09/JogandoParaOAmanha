/// obj_Alavanca – Mouse Left Pressed
if (state == 0)          
{
    state       = 1;
    image_index = 1;     
	
 
    if(obj_placapontos3.pontuacao >= 3)
	{
		instance_create_layer(185,236.5,"CAIXAA",oBlocksFLOAT);
		instance_destroy();
	}
}