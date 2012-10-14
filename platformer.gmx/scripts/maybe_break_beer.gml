var beer;
beer = argument0;
if (beer.released && beer.phy_linear_velocity_y > BEER_MAX_COLLIDE_VELOCITY) {
  break_beer(beer);
}
