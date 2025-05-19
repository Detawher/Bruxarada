var meeting =  place_meeting(x, y, obj_player);
if (meeting)
{
	if (image_alpha >= 0)
	{
	image_alpha -= .1;
	}
} else
{
}
depth = -bbox_bottom;