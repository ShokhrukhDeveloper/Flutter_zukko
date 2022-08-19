import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zukko_books/presentation/pages/styles/theme_warpper.dart';

class ProductTemplate extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  const ProductTemplate({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icon, _) {
        return SizedBox(
          width: 165.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              RatingStars(
                valueLabelVisibility: false,
                starSize: 16,
                value: 4,
                starColor: colors.primary,
              ),
              SizedBox(height: 10.h),
              Text(
                author,
                style: fonts.subtitle2.copyWith(fontSize: 16.sp),
              ),
              SizedBox(height: 5.h),
              Text(
                title,
                style: fonts.bodyText2.copyWith(color: colors.darkGrey),
              ),
            ],
          ),
        );
      },
    );
  }
}
