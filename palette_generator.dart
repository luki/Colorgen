import 'generation.dart';
import 'models.dart';

class PaletteGenerator {

  int _amountOfColors;
  Palette _palette = new Palette();

  void _setAmountOfColors(int amountOfColors) => _amountOfColors = amountOfColors;

  void genPalette(int amountOfColors) {
    _setAmountOfColors(amountOfColors);
    List<String> temp_pal = generatePalette(amountOfColors);
    for (int i = 0; i < amountOfColors; i++) {
      Color temp_col = new Color()
      ..name = ""
      ..hexCode = temp_pal[i];
      _palette.colors.add(temp_col);
    }
  }

  Palette getPalette() => _palette;

}

void main() {
  var gen = new PaletteGenerator();
  gen.genPalette(5);
  for (int i = 0; i < gen.getPalette().colors.length; i++) {
    print(gen.getPalette().colors[i].hexCode);
  }
}
