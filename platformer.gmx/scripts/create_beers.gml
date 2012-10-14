var head, position_x, position_y, com_x, com_y, body;
head = argument0;
position_x = argument1;
position_y = argument2;
com_x = argument3;
com_y = argument4;
body = argument5;
var i, beer;
for (i = 0; i < BEER_COUNT / 2; i += 1) {
  var index;
  index = BEER_COUNT - 1 - 2 * i;
  beer = instance_create(position_x + (BEER_COUNT / 2 - 1) * sprite_get_width(sprite_Beer), com_y + sprite_get_height(sprite_Head) / 2, Beer);
  head.beer[index] = beer;
  head.beer_joint[index] = physics_joint_prismatic_create(body, beer, com_x, com_y + HEAD_COM_SHIFT, 1, 0, i * 8, (i + 1) * 8, true, 0, 0, false, true);
}
for (i = 0; i < BEER_COUNT / 2; i += 1) {
  var index;
  index = BEER_COUNT - 1 - (2 * i + 1);
  beer = instance_create(position_x, com_y + sprite_get_height(sprite_Head) / 2, Beer);
  head.beer[index] = beer;
  head.beer_joint[index] = physics_joint_prismatic_create(body, beer, com_x, com_y + HEAD_COM_SHIFT, -1, 0, (i + 1) * 8, (i + 2) * 8, true, 0, 0, false, true);
}
