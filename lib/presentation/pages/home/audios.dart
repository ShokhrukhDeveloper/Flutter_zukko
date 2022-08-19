import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:no_glow_scroll/no_glow_scroll.dart';
import 'package:zukko_books/presentation/common/user_product_template.dart';
import 'package:zukko_books/presentation/pages/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';

class Audios extends StatelessWidget {
  const Audios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, _) {
        return Scaffold(
          backgroundColor: colors.bg,
          appBar: AppBar(
            title: Text(
              'audiobooks'.tr(),
              style: fonts.headline6,
            ),
            centerTitle: true,
            backgroundColor: colors.bg,
            automaticallyImplyLeading: false,
            elevation: 0.0,
          ),
          body: NoGlowScroll(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 32.h),
                    Text(
                      'my_audiobooks'.tr(),
                      style: fonts.headline6,
                    ),
                    SizedBox(height: 32.h),
                    const UserProductTemplate(
                      image: 'assets/book.png',
                      title: 'Rich dad, poor dad',
                      author: 'author',
                    ),
                    const UserProductTemplate(
                      image: 'assets/book.png',
                      title: 'Rich dad, poor dad',
                      author: 'author',
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
