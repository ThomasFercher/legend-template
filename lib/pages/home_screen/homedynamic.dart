import 'package:flutter/material.dart';
import 'package:legend_design_core/layout/scaffold/legend_scaffold.dart';
import 'package:legend_design_core/styles/layouts/layout_type.dart';
import 'package:legend_design_core/styles/theming/theme_provider.dart';
import 'package:legend_design_core/typography/legend_text.dart';
import 'package:legend_design_template/pages/home_screen/home_big.dart';
import 'package:legend_design_template/pages/home_screen/home_small.dart';
import 'package:legend_design_widgets/datadisplay/carousel/legendCarousel.dart';
import 'package:provider/provider.dart';

class HomeDynamic extends StatelessWidget {
  const HomeDynamic();

  @override
  Widget build(BuildContext context) {
    ThemeProvider theme = context.watch<ThemeProvider>();
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth>720) {
        return HomeBig();
      } else {
        return HomeSmall();
      }
    },);
    
    
    
  }
}
