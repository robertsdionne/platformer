var x_position, y_position, amount, color, score_delta;
x_position = argument0;
y_position = argument1;
amount = argument2;
color = argument3;
score_delta = instance_create(x_position, y_position, ScoreDelta);
score_delta.amount = amount;
score_delta.color = SCORE_COLOR;
