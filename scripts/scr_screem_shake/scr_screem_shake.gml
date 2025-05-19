// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function screem_shake(_val1, _val2){
	if (!instance_exists(obj_camera)) return false;
	with(obj_camera)
	{
		shake_length = _val1;
		shake_time = _val2;
		alarm[0] = shake_time;
	}
}