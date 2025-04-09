import 'dart:math';

int generateRandomNumber() {
  Random random = Random();
  return random.nextInt(1000) + 1; // Generates a random number between 0 and 999, so we add 1 to make it between 1 and 1000
}