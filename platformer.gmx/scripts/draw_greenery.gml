var path, length, segments, i;
path = argument0;
length = path_get_length(path);
segments = length / 16;
for (i = 0; i < segments; i += 1) {
  var position, position2, dx, dy, rotation;
  position = (i + .5) * 16 / length;
  dx = path_get_x(path, position + 1 / segments / 2) - path_get_x(path, position - 1 / segments / 2);
  dy = path_get_y(path, position + 1 / segments / 2) - path_get_y(path, position - 1 / segments / 2);
  rotation = radtodeg(arctan2(-dy, dx));
  draw_sprite_ext(sprite_Greenery, 0, path_get_x(path, position), path_get_y(path, position), 1, 1, rotation, c_white, 1);
}
