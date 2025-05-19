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
}

if (mudei && alpha <= 0 )
{
instance_destroy();
}
