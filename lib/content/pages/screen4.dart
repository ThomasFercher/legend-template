import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:legend_design_core/layout/scaffold/routebody/legend_route_body.dart';
import 'package:legend_design_core/state/legend_state.dart';
import 'package:legend_design_core/styles/typography/widgets/legend_text.dart';
import 'package:legend_design_widgets/input/button/legendButton/legend_button.dart';

class Screen4 extends LegendWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, LegendTheme theme) {
    return LegendRouteBody(
      singlePage: true,
      builder: (context, s) {
        return SizedBox(
          height: s.height,
          child: Column(
            children: [
              LegendText(
                "Example Screen with Tabbar",
                style: theme.typography.h2,
              ),
            ],
          ),
        );
      },
    );
  }
}
