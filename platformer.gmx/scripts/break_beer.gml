var beer, score_delta;
beer = argument0;
audio_play_sound(
    choose(sound_BreakBeerLow, sound_BreakBeerHigh), random(1), false);
with(beer) {
  effect_create_above(ef_smoke, phy_com_x, phy_com_y, 1, c_white);
  instance_destroy();
}
flinch_crowd();
ViewControl.marionette_score -= SCORE_AMOUNT;
instance_create(beer.phy_position_x - 32, beer.phy_position_y, ScoreDelta);
if (beer.released_by_bird) {
  ViewControl.bird_score += SCORE_AMOUNT;
  instance_create(beer.phy_position_x + 32, beer.phy_position_y, ScoreDelta);
}
