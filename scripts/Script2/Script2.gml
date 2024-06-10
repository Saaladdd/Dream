// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_resolution(new_width, new_height) {
    // Set the window size
    window_set_size(new_width, new_height);

    // Adjust the view size
    view_wview[0] = new_width;
    view_hview[0] = new_height;

    // Adjust the port size
    view_wport[0] = new_width;
    view_hport[0] = new_height;

    // Resize the application surface
    surface_resize(application_surface, new_width, new_height);

    // Center the window
    window_center();
}