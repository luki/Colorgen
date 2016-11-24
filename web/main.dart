// Copyright (c) 2016, Lukas Muller. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'sources/palette_generator.dart';

var generateButton = querySelector("#generate-button");
var colorArea = (querySelector("#color-area") as DivElement);
var amount = (querySelector("#amount") as InputElement);

void main() {

  generateButton.onClick.listen(generateEvent);
}

void generateEvent(MouseEvent event) {

  colorArea.children.clear();

  String amnt = amount.value;

  // int amountOfColors = (amountTextfield as InputElement).value;
  var gen = new PaletteGenerator();
  gen.genPalette(int.parse(amnt));
  for (int i = 0; i < gen.getPalette().colors.length; i++) {

    var colorBlock = new DivElement()
    // ..classes.add("color")
    ..style.height = "300px"
    ..style.width = "300px"
    ..style.marginBottom = "20px"
    ..style.display = "block"
    ..style.backgroundColor = "#${gen.getPalette().colors[i].hexCode}";
    colorArea.append(colorBlock);
  }

}
