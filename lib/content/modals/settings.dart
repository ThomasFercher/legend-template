import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:legend_design_core/styles/legend_theme.dart';
import 'package:legend_design_core/styles/typography/legend_text.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LegendText(text: "Settings"),
      color: Colors.red,
      width: 200,
      height: MediaQuery.of(context).size.width,
    );
  }
}
