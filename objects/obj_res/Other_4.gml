camera = camera_create_view(0,0,camera_width,camera_height);
camera_set_view_border(camera,camera_width,camera_height);
camera_set_view_target(camera,camera_target);
view_set_camera(0, camera);
view_enabled = true;
view_visible[0] = true;