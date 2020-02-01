// Updating camera
if (follow != undefined)
{
	if (instance_exists(follow))
	{
		xstart = follow.x;
		ystart = follow.y;
	}
}

// Camera smoothing
x += (xstart-x)/follow_speed;
y += (ystart-y)/follow_speed;

// Clamp to room walls
x = clamp(x,view_w_half, room_width-view_w_half);
y = clamp(y,view_h_half, room_height-view_h_half);

camera_set_view_pos(cam, x-view_w_half, y-view_h_half);