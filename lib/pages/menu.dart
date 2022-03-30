import 'package:flutter/material.dart';
import 'package:legend_design_core/layout/scaffold/legend_scaffold.dart';
import 'package:legend_design_core/styles/layouts/layout_type.dart';
import 'package:legend_design_core/styles/theming/theme_provider.dart';
import 'package:legend_design_core/typography/legend_text.dart';
import 'package:legend_design_widgets/datadisplay/carousel/legendCarousel.dart';
import 'package:legend_design_widgets/datadisplay/tag/legendTag.dart';
import 'package:provider/src/provider.dart';

class Menu extends StatelessWidget {
  const Menu();

  @override
  Widget build(BuildContext context) {
    ThemeProvider theme = context.watch<ThemeProvider>();
    List<String> list = [
      "\u2022 Calamari Fritti",
      "\u2022 Spaghetti Bolognese",
      "\u2022 Gegrillter Fisch",
    ];
    return LegendScaffold(
      maxContentWidth: 1000,
      disableContentDecoration: true,
      contentBuilder: (context, size) {
        return SizedBox(
          width: size.width,
          child: Column(
            children: [
              Card(
                elevation: 4.0,
                margin: EdgeInsets.all(theme.sizing.padding[0]),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: theme.sizing.borderRadius[0]),
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        LegendText(
                          text: "Österreichische Spezialitäten Genießen",
                          textStyle: theme.typography.h4,
                        ),
                        LegendText(
                          text: "Die Speißekarte umfasst zahlreiche Leckerein, welche von uns mit liebe zubereitet werden."
                                  " Besonders zu hervorheben sind die verschiedenen Mittagsmenüs! Es ist ganz verschieden obWild, Schwein oder Kalb, es findet bestimmt jeder etwas für sich." +
                              " Sollte das nicht der Fall sein so bietet unsere Speisekarte eine Handvoll anderer Optionen für sie an.",
                          textStyle: theme.typography.h1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 4.0,
                margin: EdgeInsets.all(theme.sizing.padding[0]),
                color: theme.colors.foreground[0],
                shape: RoundedRectangleBorder(
                    borderRadius: theme.sizing.borderRadius[0]),
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        LegendText(
                          text: "Internationale Küche",
                          textStyle: theme.typography.h4,
                        ),
                        LegendText(
                          text:
                              "Auch die internationale Küche findet auf unsere Speißekarte einen Platz!",
                          textStyle: theme.typography.h1,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: size.width,
                              child: Center(
                                child: LegendText(
                                  text: list[index],
                                  textStyle: theme.typography.h1,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 4.0,
                margin: EdgeInsets.all(theme.sizing.padding[0]),
                color: theme.colors.foreground[0],
                shape: RoundedRectangleBorder(
                    borderRadius: theme.sizing.borderRadius[0]),
                child: SizedBox(
                  width: size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        LegendText(
                          text: "Tägliche Menüs",
                          textStyle: theme.typography.h4,
                        ),
                        LegendText(
                          text: "Der Gasthof Kurath bieten jeden Tag bis zu zwei Mittagmenüs an, dabei achtet unsere Küche auf eine ausgewogene Abwechslung! ",
                          textStyle: theme.typography.h1,
                          textAlign: TextAlign.center,
                          
                        ),
                        LegendText(
                          text: "An den Wochenenden eine Auswahl an bis zu 4 Menüs",
                          textStyle: theme.typography.h4,
                             textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 4.0,
                margin: EdgeInsets.all(theme.sizing.padding[0]),
                color: theme.colors.foreground[0],
                shape: RoundedRectangleBorder(
                    borderRadius: theme.sizing.borderRadius[0]),
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LegendCarousel(
                      height: size.height * 0.6,
                      items: [
                        Image.asset(
                          "assets/images/essen1.jpg",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assets/images/essen2.jpg",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assets/images/essen3.jpg",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assets/images/essen4.jpg",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assets/images/essen5.jpg",
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      layoutType: LayoutType.FixedHeader,
      pageName: "Menu",
    );
  }
}
