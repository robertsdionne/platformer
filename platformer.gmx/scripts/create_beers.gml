var position_x, position_y, com_x, com_y, body;
position_x = argument0;
position_y = argument1;
com_x = argument2;
com_y = argument3;
body = argument4;
var i, beer;
for (i = 0; i < BEER_COUNT / 2; i += 1) {
  beer = instance_create(position_x + 32, com_y + HEAD_COM_SHIFT, Beer);
  beer_joint[BEER_COUNT - 1 - 2 * i] = physics_joint_prismatic_create(body, beer, com_x, com_y + HEAD_COM_SHIFT, 1, 0, i * 8, (i + 1) * 8, true, 0, 0, false, true);
}
for (i = 0; i < BEER_COUNT / 2; i += 1) {
  beer = instance_create(position_x, com_y + HEAD_COM_SHIFT, Beer);
  beer_joint[BEER_COUNT - 1 - (2 * i + 1)] = physics_joint_prismatic_create(body, beer, com_x, com_y + HEAD_COM_SHIFT, -1, 0, (i + 1) * 8, (i + 2) * 8, true, 0, 0, false, true);
}
return beer_joint;
