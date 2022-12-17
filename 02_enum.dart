main() {
  // int volume = 0; // 0 = low, 1 = medium, 2 = high
  Audio volume = Audio.medium;

  switch (volume) {
    case Audio.low:
      print('Low volume');
      break;
    case Audio.medium:
      print('Medium volume');
      break;
    case Audio.high:
      print('High volume');
      break;
  }
}

enum Audio {
  low,
  medium,
  high,
}
