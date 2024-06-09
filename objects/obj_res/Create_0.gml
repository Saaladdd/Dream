


device_height = display_get_height();
device_width = display_get_width();
aspect_ratio = device_width/device_height;
desired_height = round(device_height*aspect_ratio);
desired_width = round(device_width*aspect_ratio);
camera_width = 640;
camera_height = 340;
camera_target = obj_imposter_red1; 
camera = camera_create_view(0,0,camera_width,camera_height);
camera_set_view_border(camera,camera_width,camera_height);
camera_set_view_target(camera,camera_target);
view_set_camera(0, camera);
view_enabled = true;
view_visible[0] = true;
surface_resize(application_surface,desired_width,desired_height);
window_set_size(desired_width,desired_height);
window_center();
_fullscreen = false;
