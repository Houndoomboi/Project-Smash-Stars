draw_self();
//place_meeting(x, y, id))
if (position_meeting(mouse_x, mouse_y, id)) {
  // draw the preview stuff to the screen 
  if (sprite=arcadeicon){
	draw_sprite(spr_arcade_trio, 0, room_width*3/4, room_height/2);
  }
    if (sprite=battleIcon){
	draw_sprite(spr_battle, 0, room_width*3/4, room_height/2);
  }
    if (sprite=extrasicon){
	draw_sprite(spr_extras, 0, room_width*3/4, room_height/2);
  }
    if (sprite=settingsicon){
	draw_sprite(spr_settings, 0, room_width*3/4, room_height/2);
  }
}