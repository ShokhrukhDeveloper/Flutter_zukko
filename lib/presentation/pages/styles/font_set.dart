part of 'theme.dart';

class FontSet {
  final TextStyle headline1;
  final TextStyle headline2;
  final TextStyle headline3;
  final TextStyle headline4;
  final TextStyle headline5;
  final TextStyle headline6;
  final TextStyle subtitle1;
  final TextStyle subtitle2;
  final TextStyle bodyText1;
  final TextStyle bodyText2;
  final TextStyle button;
  final TextStyle caption;
  final TextStyle overline;

  FontSet._(
      {required this.headline1,
      required this.headline2,
      required this.headline3,
      required this.headline4,
      required this.headline5,
      required this.headline6,
      required this.subtitle1,
      required this.subtitle2,
      required this.bodyText1,
      required this.bodyText2,
      required this.button,
      required this.caption,
      required this.overline});

  static FontSet createOrUpdate(CustomColorSet colors) {
    return FontSet._(
      headline1: AppFonts.light(size: 96.sp, color: colors.text),
      headline2: AppFonts.light(size: 60.sp, color: colors.text),
      headline3: AppFonts.regular(size: 48.sp, color: colors.text),
      headline4: AppFonts.regular(size: 34.sp, color: colors.text),
      headline5: AppFonts.regular(size: 24.sp, color: colors.text),
      headline6: AppFonts.medium(size: 20.sp, color: colors.text),
      subtitle1: AppFonts.regular(size: 16.sp, color: colors.text),
      subtitle2: AppFonts.medium(size: 14.sp, color: colors.text),
      bodyText1: AppFonts.regular(size: 16.sp, color: colors.text),
      bodyText2: AppFonts.regular(size: 14.sp, color: colors.text),
      button: AppFonts.medium(size: 14.sp, color: colors.text),
      caption: AppFonts.regular(size: 12.sp, color: colors.text),
      overline: AppFonts.regular(size: 10.sp, color: colors.text),
    );
  }
}
