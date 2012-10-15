var frame, dance_move, period;
frame = argument0;
dance_move = argument1;
period = argument2;
if (frame % period == 0) {
  if (random(1) < 0.66) {
    dance_move = !dance_move;
  }
}
if (frame % period / 2 == 0) {
  if (random(1) < 0.33) {
    dance_move = !dance_move;
  }
}
if (frame % period / 4 == 0) {
  if (random(1) < 0.166) {
    dance_move = !dance_move;
  }
}
return dance_move;
