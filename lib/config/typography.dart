import 'package:flutter/rendering.dart';
import 'package:legend_design_core/interfaces/typography_delegate.dart';
import 'package:legend_design_core/styles/typography/typography.dart';

class AppTypography implements TypographyDelegate {
  @override
  LegendTypography get typography {
    return const LegendTypography(
      h0: TextStyle(),
      h1: TextStyle(),
      h2: TextStyle(),
      h3: TextStyle(),
      h4: TextStyle(),
      h5: TextStyle(),
    );
  }
}
