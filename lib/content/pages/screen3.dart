import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:legend_design_core/layout/navigation/section/legend_section.dart';
import 'package:legend_design_core/layout/scaffold/routebody/legend_route_body.dart';
import 'package:legend_design_core/legend_design_core.dart';
import 'package:legend_design_core/styles/legend_theme.dart';
import 'package:legend_design_core/styles/typography/legend_text.dart';
import 'package:legend_design_core/styles/typography/rich/legend_rich_text.dart';
import 'package:legend_design_widgets/layout/dynamic/row/dynamic_row.dart';
import 'package:legend_utils/legend_utils.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LegendTheme theme = context.watch<LegendTheme>();
    return LegendRouteBody(
      slivers: [
        LegendSection(
          title: "Typography",
          child: DynamicRow(
            verticalSpacing: theme.sizing.spacing2,
            spacing: theme.sizing.spacing2,
            children: [
              LegendText(
                text: "Screen1",
                textStyle: theme.typography.h6,
              ),
              LegendText(
                text: "Screen1",
                textStyle: theme.typography.h5,
              ),
              LegendText(
                text: "Screen1",
                textStyle: theme.typography.h4,
              ),
              LegendText(
                text: "Screen1",
                textStyle: theme.typography.h3,
              ),
              LegendText(
                text: "Screen1",
                textStyle: theme.typography.h2,
              ),
              LegendText(
                text: "Screen1",
                textStyle: theme.typography.h1,
              ),
              LegendText(
                text: "Screen1",
                textStyle: theme.typography.h0,
              ),
            ],
          ),
        ),
        LegendSection(
          title: "Spacing",
          child: DynamicRow(
            verticalSpacing: theme.sizing.spacing2,
            spacing: theme.sizing.spacing2,
            children: [
              SpacingContainer(
                width: theme.sizing.spacing1,
                title: "Spacing 1",
              ),
              SpacingContainer(
                width: theme.sizing.spacing2,
                title: "Spacing 2",
              ),
              SpacingContainer(
                width: theme.sizing.spacing3,
                title: "Spacing 3",
              ),
              SpacingContainer(
                width: theme.sizing.spacing4,
                title: "Spacing 4",
              ),
            ],
          ),
        ),
        LegendSection(
          title: "Icon Sizes",
          child: DynamicRow(
            verticalSpacing: theme.sizing.spacing2,
            spacing: theme.sizing.spacing2,
            children: [
              IconContainer(
                size: theme.sizing.iconSize1,
                title: "IconSize 1",
              ),
              IconContainer(
                size: theme.sizing.iconSize2,
                title: "IconSize 2",
              ),
              IconContainer(
                size: theme.sizing.iconSize3,
                title: "IconSize 3",
              ),
              IconContainer(
                size: theme.sizing.iconSize4,
                title: "IconSize 4",
              )
            ],
          ),
        ),
        LegendSection(
          title: "Elevation",
          child: DynamicRow(
            verticalSpacing: theme.sizing.spacing2,
            spacing: theme.sizing.spacing2,
            children: [
              Card(
                elevation: theme.sizing.elevation1,
                child: SizedBox(
                  width: 128,
                  height: 128,
                  child: Center(
                    child: LegendText(
                      text: "Elevation 1",
                      textStyle: theme.typography.h2,
                    ),
                  ),
                ),
              ),
              Card(
                elevation: theme.sizing.elevation2,
                child: SizedBox(
                  width: 128,
                  height: 128,
                  child: Center(
                    child: LegendText(
                      text: "Elevation 2",
                      textStyle: theme.typography.h2,
                    ),
                  ),
                ),
              ),
              Card(
                elevation: theme.sizing.elevation3,
                child: SizedBox(
                  width: 128,
                  height: 128,
                  child: Center(
                    child: LegendText(
                      text: "Elevation 3",
                      textStyle: theme.typography.h2,
                    ),
                  ),
                ),
              ),
              Card(
                elevation: theme.sizing.elevation4,
                child: SizedBox(
                  width: 128,
                  height: 128,
                  child: Center(
                    child: LegendText(
                      text: "Elevation 4",
                      textStyle: theme.typography.h2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        LegendSection(
          title: "Radius",
          child: DynamicRow(
            verticalSpacing: theme.sizing.spacing2,
            spacing: theme.sizing.spacing2,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: theme.sizing.radius1.asRadius(),
                  color: theme.colors.onSecondary.lighten(),
                ),
                child: Center(
                  child: LegendText(
                    text: "Radius 1",
                    textStyle: theme.typography.h2,
                  ),
                ),
                width: 128,
                height: 64,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: theme.sizing.radius2.asRadius(),
                  color: theme.colors.onSecondary.lighten(),
                ),
                child: Center(
                  child: LegendText(
                    text: "Radius 2",
                    textStyle: theme.typography.h2,
                  ),
                ),
                width: 128,
                height: 64,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: theme.sizing.radius3.asRadius(),
                  color: theme.colors.onSecondary.lighten(),
                ),
                child: Center(
                  child: LegendText(
                    text: "Radius 3",
                    textStyle: theme.typography.h2,
                  ),
                ),
                width: 128,
                height: 64,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: theme.sizing.radius4.asRadius(),
                  color: theme.colors.onSecondary.lighten(),
                ),
                child: Center(
                  child: LegendText(
                    text: "Radius 4",
                    textStyle: theme.typography.h2,
                  ),
                ),
                width: 128,
                height: 64,
              )
            ],
          ),
        ),
      ].paddingCol(theme.sizing.spacing1),
    );
  }
}

class IconContainer extends StatelessWidget {
  final String title;
  final double size;

  const IconContainer({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LegendText(text: title),
        Icon(
          Icons.troubleshoot_rounded,
          size: size,
        ),
      ],
    );
  }
}

class SpacingContainer extends StatelessWidget {
  final double width;
  final String title;

  const SpacingContainer({
    Key? key,
    required this.width,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LegendTheme theme = context.watch<LegendTheme>();
    return Container(
      decoration: BoxDecoration(
        borderRadius: theme.sizing.radius1.asRadius(),
        color: theme.colors.background3,
      ),
      padding: EdgeInsets.only(left: theme.sizing.spacing1),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          LegendRichText(
            text: [
              RichTextItem(style: theme.typography.h2, text: title),
              RichTextItem(style: theme.typography.h1, text: "[${width}px]"),
            ],
          ),
          SizedBox(
            width: theme.sizing.spacing1,
          ),
          Container(
            height: 48,
            width: width,
            decoration: BoxDecoration(
              color: theme.colors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
