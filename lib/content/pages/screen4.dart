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
      slivers: (scroll) {
        return [
          SliverToBoxAdapter(
            child: LegendText(
              "Example Screen with Tabbar",
              style: theme.typography.h2,
            ),
          ),
          SliverFillRemaining(
            child: Container(
              color: Colors.green,
            ),
          ),
          SliverFillRemaining(
            child: Container(
              color: Colors.red,
              child: LegendButton(
                onTap: () {
                  scroll.animateTo(0.0,
                      duration: Duration(
                        seconds: 1,
                      ),
                      curve: Curves.bounceIn);
                },
                text: LegendText("Button"),
                background: Colors.red,
              ),
            ),
          ),
        ];
      },
    );
  }
}
