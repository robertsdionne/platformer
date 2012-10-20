var object;
object = argument0;
if (object.next_beer < BEER_COUNT) {
  with (object) {
    physics_joint_delete(beer_joint[next_beer]);
  }
  object.beer[object.next_beer].released = true;
  object.next_beer += 1;
}
