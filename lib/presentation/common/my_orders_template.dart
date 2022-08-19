import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zukko_books/presentation/pages/styles/theme_warpper.dart';

class OrdersTemplate extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  const OrdersTemplate({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, _) {
        return Padding(
          padding: EdgeInsets.only(bottom: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Буюртма №2',
                style: fonts.headline6,
              ),
              SizedBox(height: 24.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100.h,
                    width: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.h),
                      Text(
                        title,
                        style: fonts.subtitle2.copyWith(fontSize: 16.sp),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        author,
                        style: fonts.bodyText2.copyWith(color: colors.darkGrey),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'Кабул килинган',
                        style:
                            fonts.subtitle1.copyWith(color: colors.secondary),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
