import 'package:flutter/material.dart';
import 'package:zukko_books/presentation/pages/styles/theme_warpper.dart';
import 'package:zukko_books/presentation/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, _) {
        return Scaffold(
          backgroundColor: AppColors.primary,
          body: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: Image(
                image: AssetImage(
                  icons.splashLogo,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
