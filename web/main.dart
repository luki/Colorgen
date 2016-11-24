// Copyright (c) 2016, Lukas Muller. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'sources/palette_generator.dart';

void main() {
  var gen = new PaletteGenerator();
  gen.genPalette(5);
  for (int i = 0; i < gen.getPalette().colors.length; i++) {

    var colorBlock = new DivElement()
    // ..classes.add("color")
    ..style.height = "300px"
    ..style.width = "300px"
    ..style.marginBottom = "20px"
    ..style.display = "block"
    ..style.backgroundColor = "#${gen.getPalette().colors[i].hexCode}";
    querySelector("#wrapper").append(colorBlock);
  }
}
