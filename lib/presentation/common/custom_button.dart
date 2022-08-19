import 'package:flutter/material.dart';
import 'package:zukko_books/presentation/pages/styles/theme_warpper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return InkWell(
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          height: 56.h,
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(24.r),
          ),
          child: Center(
            child: Text(
              title,
              style: fonts.subtitle2.copyWith(color: colors.white),
            ),
          ),
        ),
      );
    });
  }
}

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const CustomTextButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: fonts.subtitle1.copyWith(color: colors.link),
        ),
      );
    });
  }
}
