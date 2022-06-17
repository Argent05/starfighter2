void keyPressed() {
  if (key == 'w' || key == 'W') up = true;
  if (key == 'd' || key == 'D') right = true;
  if (key == 's' || key == 'S') down = true;
  if (key == 'a' || key == 'A') left = true;
  if (key == ' ') space = true;
}

void keyReleased() {
  if (key == 'w' || key == 'W') up = false;
  if (key == 's' || key == 'S') down = false;
  if (key == 'd' || key == 'D') right = false;
  if (key == 'a' || key == 'A') left = false;
  if (key == ' ') space = false;
}
