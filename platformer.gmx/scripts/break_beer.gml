var beer;
beer = argument0;
audio_play_sound(
    choose(sound_BreakBeerLow, sound_BreakBeerHigh), random(1), false);
with(beer) {
  effect_create_above(ef_smoke, phy_com_x, phy_com_y, 1, c_white);
  instance_destroy();
}
