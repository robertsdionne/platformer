var object, amount;
object = argument0;
amount = argument1;
if (amount < 0 && object.spring_x > ViewControl.minimum_x || amount > 0 && object.spring_x < ViewControl.maximum_x) {
  object.spring_x += amount;
}
