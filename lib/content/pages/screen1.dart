import 'package:flutter/widgets.dart';
import 'package:legend_design_core/layout/scaffold/routebody/legend_route_body.dart';
import 'package:legend_design_core/styles/typography/legend_text.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LegendRouteBody(
      builder: (context, s) {
        return LegendText(text: "Screen1");
      },
    );
  }
}
