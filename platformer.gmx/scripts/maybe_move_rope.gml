var object, amount;
object = argument0;
amount = argument1;
if ((amount < 0 && object.spring_length > 0) || (amount > 0 && object.spring_length < BIRD_MAX_ROPE_LENGTH)) {
  object.spring_length += amount;
}
