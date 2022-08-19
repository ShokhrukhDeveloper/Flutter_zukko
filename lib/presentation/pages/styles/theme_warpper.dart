import 'package:flutter/material.dart';
import 'theme.dart';
import 'package:provider/provider.dart';

class ThemeWrapper extends StatelessWidget {
  final Function(
    BuildContext context,
    CustomColorSet colors,
    FontSet fonts,
    IconSet icons,
    ZukkoTheme controller,
  ) builder;

  const ThemeWrapper({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ZukkoTheme>(builder: (context, theme, _) {
      return builder(context, theme.colors, theme.fonts, theme.icons, theme);
    });
  }
}
