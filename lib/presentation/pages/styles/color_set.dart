part of 'theme.dart';

class CustomColorSet {
  final Color primary;

  final Color primaryVariant;

  final Color text;

  final Color tertiary;

  final Color grey;

  final Color stroke;

  final Color darkGrey;

  final Color white;

  final Color bg;

  final Color disabled;

  final Color secondary;

  final Color link;

  CustomColorSet._({
    required this.primary,
    required this.primaryVariant,
    required this.text,
    required this.tertiary,
    required this.grey,
    required this.stroke,
    required this.darkGrey,
    required this.white,
    required this.bg,
    required this.disabled,
    required this.secondary,
    required this.link,
  });

  factory CustomColorSet._create(CustomThemeMode mode) {
    const primary = AppColors.primary;

    const primaryVariant = AppColors.primaryVariant;

    final text = mode.isDark ? AppColors.textDark : AppColors.text;

    const tertiary = AppColors.tertiary;

    final grey = mode.isDark ? AppColors.greyDark : AppColors.grey;

    final stroke = mode.isDark ? AppColors.strokeDark : AppColors.stroke;

    final darkGrey = mode.isDark ? AppColors.darkGreyDark : AppColors.darkGrey;

    const white = AppColors.white;

    final bg = mode.isDark ? AppColors.bgDark : AppColors.bg;

    const disabled = AppColors.disables;

    const secondary = AppColors.secondary;

    const link = AppColors.link;
    return CustomColorSet._(
      primary: primary,
      primaryVariant: primaryVariant,
      text: text,
      tertiary: tertiary,
      grey: grey,
      stroke: stroke,
      darkGrey: darkGrey,
      white: white,
      bg: bg,
      disabled: disabled,
      secondary: secondary,
      link: link,
    );
  }

  static CustomColorSet createOrUpdate(CustomThemeMode mode) {
    return CustomColorSet._create(mode);
  }
}
