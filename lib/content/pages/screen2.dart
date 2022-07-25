import 'package:flutter/widgets.dart';
import 'package:legend_design_core/layout/navigation/section/legend_section.dart';
import 'package:legend_design_core/layout/scaffold/routebody/legend_route_body.dart';
import 'package:legend_design_core/legend_design_core.dart';
import 'package:legend_design_core/styles/legend_theme.dart';
import 'package:legend_design_core/styles/typography/legend_text.dart';
import 'package:legend_design_widgets/input/form/layout/grid/legendFormGrid.dart';
import 'package:legend_design_widgets/layout/dynamic/row/dynamic_row.dart';
import 'package:legend_utils/extensions/colors.dart';
import 'package:legend_utils/legend_utils.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LegendTheme theme = context.watch<LegendTheme>();
    return LegendRouteBody(
      slivers: [
        LegendSection(
          title: "Primary",
          child: DynamicRow(
            verticalSpacing: theme.sizing.spacing1,
            spacing: theme.sizing.spacing2,
            children: [
              ColorContainer(
                color: theme.colors.primary,
                title: "Primary",
              ),
              ColorContainer(
                color: theme.colors.onPrimary,
                title: "On Primary",
              ),
              ColorContainer(
                color: theme.colors.secondary,
                title: "Secondary",
              ),
              ColorContainer(
                color: theme.colors.onSecondary,
                title: "On Secondary",
              ),
              ColorContainer(
                color: theme.colors.tertiary,
                title: "Tertiary",
              ),
              ColorContainer(
                color: theme.colors.onTertiary,
                title: "On Tertiary",
              ),
              ColorContainer(
                color: theme.colors.disabled,
                title: "Disabled",
              ),
              ColorContainer(
                color: theme.colors.error,
                title: "Error",
              ),
            ],
          ),
        ),
        LegendSection(
          title: "Foreground",
          child: DynamicRow(
            verticalSpacing: theme.sizing.spacing1,
            spacing: theme.sizing.spacing2,
            children: [
              ColorContainer(
                color: theme.colors.foreground1,
                title: "Foreground 1",
              ),
              ColorContainer(
                color: theme.colors.foreground2,
                title: "Foreground 2",
              ),
              ColorContainer(
                color: theme.colors.foreground3,
                title: "Foreground 3",
              ),
              ColorContainer(
                color: theme.colors.foreground4,
                title: "Foreground 4",
              ),
              ColorContainer(
                color: theme.colors.foreground5,
                title: "Foreground 5",
              ),
            ],
          ),
        ),
        LegendSection(
          title: "Background",
          child: DynamicRow(
            verticalSpacing: theme.sizing.spacing1,
            spacing: theme.sizing.spacing2,
            children: [
              ColorContainer(
                color: theme.colors.background1,
                title: "Background 1",
              ),
              ColorContainer(
                color: theme.colors.background2,
                title: "Background 2",
              ),
              ColorContainer(
                color: theme.colors.background3,
                title: "Background 3",
              ),
              ColorContainer(
                color: theme.colors.background4,
                title: "Background 4",
              ),
              ColorContainer(
                color: theme.colors.background5,
                title: "Background 5",
              ),
            ],
          ),
        ),
      ].paddingCol(theme.sizing.spacing1),
    );
  }
}

class ColorContainer extends StatelessWidget {
  final Color color;
  final String? title;
  final double size;

  ColorContainer({
    required this.color,
    this.title,
    this.size = 128,
  });

  @override
  Widget build(BuildContext context) {
    LegendTheme theme = context.watch<LegendTheme>();
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: theme.sizing.radius2.asRadius(),
      ),
      child: Center(
        child: LegendText(
          text: title,
          textStyle: theme.typography.h2.copyWith(
            color: color.getTextColor(
              light: theme.colors.foreground5,
              dark: theme.colors.foreground1,
            ),
          ),
        ),
      ),
    );
  }
}
