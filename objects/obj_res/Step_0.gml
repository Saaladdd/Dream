// obj_controller Step Event

// Toggle fullscreen with the key T
if (keyboard_check_pressed(ord("T"))) {
    _fullscreen = !_fullscreen;
    window_set_fullscreen(_fullscreen);

    if (_fullscreen) {
        // Get the display dimensions for fullscreen
        device_width = display_get_width();
        device_height = display_get_height();

        // Calculate desired dimensions while maintaining the aspect ratio
        if (device_width / device_height > aspect_ratio) {
            desired_height = device_height;
            desired_width = round(desired_height * aspect_ratio);
        } else {
            desired_width = device_width;
            desired_height = round(desired_width / aspect_ratio);
        }
        
        // Resize the application surface to the desired dimensions
        surface_resize(application_surface, desired_width, desired_height);
    } else {
        // Resize the application surface and set the window size to base resolution
        surface_resize(application_surface, camera_width, camera_height);
        window_set_size(camera_width, camera_height);
        window_center();
    }
}

// Update camera position to follow the target
if (instance_exists(camera_target)) {
    var target_x = camera_target.x - camera_width / 2;
    var target_y = camera_target.y - camera_height / 2;

    // Ensure the camera does not go out of bounds (optional)
    target_x = clamp(target_x, 0, room_width - camera_width);
    target_y = clamp(target_y, 0, room_height - camera_height);

    // Update the camera
    camera_set_view_pos(camera, target_x, target_y);
}