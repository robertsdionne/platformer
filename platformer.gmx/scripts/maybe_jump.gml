var object;
object = argument0;
if (!object.crouching && object.may_jump) {
  with (object) {
    physics_apply_impulse(phy_com_x, phy_com_y, 0, -JUMP_POWER);
  }
  object.may_jump = false;
}
