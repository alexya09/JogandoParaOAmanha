//show_debug_message("sliding: " + string(sliding));

//what state are we in
	// idle / not sliding
depth = -bbox_bottom;

	if(sliding == false)
	{
		startPointX = x;
		startPointY = y;
		
		xspd = 0;
		yspd = 0;
		
	}
	
	//get ground type 
	
	if(place_meeting(x,y,oPushBlocksArea))
	{
		pushBlockArea = true;
	}
	
	else
	{
		pushBlockArea = false;
	}
	
	if (sliding == true)
	{
		var realDir = faceDir * 90;
		
		var targetXDist = lengthdir_x(gridSpace,realDir);
		var targetYDist = lengthdir_y(gridSpace,realDir);
		targetX = startPointX + targetXDist;
		targetY = startPointY + targetYDist;
		
		var targetDist = point_distance(x,y,targetX,targetY);
		var finalSpd = min(moveSpd, targetDist);
		xspd = lengthdir_x(finalSpd,realDir);
		yspd = lengthdir_y(finalSpd,realDir);
		
		if ((pushBlockArea == true) && (!place_meeting(targetX, targetY,oPushBlocksArea)))
		{
			xspd = 0;
			yspd = 0;
		}
			
		
		if(place_meeting(targetX,targetY,oBlocoParede))
		{
			xspd = 0;
			yspd = 0;
		}
		
		/*
		if(place_meeting(targetX,targetY,oBox1))
		{
			xspd = 0;
			yspd = 0;
		} */
	}
	
	
	x += xspd;
	y += yspd;
	
	x += xspd;
	y += yspd;

/* 
if (point_distance(x, y, targetX, targetY) < moveSpd) {
    x = targetX;
    y = targetY;
    sliding = false;
} */

	
	if(xspd == 0 && yspd ==0)
	{
		sliding = false;
	}
	
//show_debug_message("My depth:caixa " + string(-bbox_bottom));
