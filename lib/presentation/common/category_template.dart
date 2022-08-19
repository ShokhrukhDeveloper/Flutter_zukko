import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zukko_books/presentation/pages/styles/theme_warpper.dart';

class CategoryTemplate extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onPressed;
  const CategoryTemplate({
    Key? key,
    required this.image,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, _) {
        return GestureDetector(
          onTap: onPressed,
          child: Container(
            height: 100.h,
            width: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.all(14.h),
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: fonts.subtitle2.copyWith(
                  color: colors.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
