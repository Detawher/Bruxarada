resolution_width = 800;
resolution_height = 720;
resolution_scale = 5;
global.view_width = resolution_width / resolution_scale;
global.view_heght = resolution_height / resolution_scale;
view_target = obj_player;
view_spd = 0.2
window_set_size(global.view_width * resolution_scale,global.view_heght * resolution_scale)
surface_resize(application_surface,global.view_width * resolution_scale,global.view_heght * resolution_scale)

shake_length = 0;
shake_time = 0;

