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

    var colorCode = gen.getPalette().colors[i].hexCode;

    var colorBlock = new DivElement()
    // ..classes.add("color")
    ..style.height = "300px"
    ..style.width = "300px"
    ..style.marginBottom = "20px"
    ..style.display = "block"
    ..style.backgroundColor = "#$colorCode";

    // Label that says number of color
    var numberLabel = new SpanElement()
    ..text = "Color #$i"
    ..style.display = "block"
    ..style.color = "white"
    ..style.textAlign = "center"
    ..style.fontSize = "14pt";

    // Label that tells the color code
    var colorLabel = new SpanElement()
    ..text = "#${colorCode}"
    ..style.display = "block"
    ..style.color = "white"
    ..style.textAlign = "center"
    ..style.fontSize = "14pt";

    colorBlock.append(numberLabel);
    colorBlock.append(colorLabel);

    colorArea.append(colorBlock);
  }

}
