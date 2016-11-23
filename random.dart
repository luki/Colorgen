import 'dart:math';

String generateColor() {

  var numbers = ["1","2","3","4","5","6","7","8","9"];
  var letters = ["A","B","C","D","E","F"];
  var random = new Random();
  String result = "";

  for (int i = 0; i < 6; i++) {
    var numberOrLetter = random.nextInt(2);
    switch (numberOrLetter) {
      case 0:
        result += numbers[random.nextInt(numbers.length)];
        break;
      case 1:
        result += letters[random.nextInt(letters.length)];
        break;
      default:
        print("Weird");
        break;
    }

  }
  return result;
}

List<String> generatePalette(int amountOfColors) {
  List<String> palette = new List();
  for (int i = 0; i < amountOfColors; i++) {
    palette.add(generateColor());
  }
  return palette;
}

void main() {
  print(generateColor());
  print(generatePalette(3));
}
