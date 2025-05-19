if (mudei)
{
alpha -= .01;
} else
{
alpha += .01;
}

if (alpha >= 1)
{
room_goto(destino);
obj_player.x = destino_x;
obj_player.y = destino_y;
}

if (mudei && alpha <= 0 )
{
instance_destroy();
}
