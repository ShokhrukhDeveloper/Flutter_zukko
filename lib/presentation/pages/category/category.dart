import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:no_glow_scroll/no_glow_scroll.dart';
import 'package:zukko_books/presentation/common/custom_text_field.dart';
import 'package:zukko_books/presentation/common/product_template.dart';
import 'package:zukko_books/presentation/pages/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, _) {
        return Scaffold(
          backgroundColor: colors.bg,
          appBar: AppBar(
            title: Text(
              'Жахон адабиёти',
              style: fonts.headline6,
            ),
            centerTitle: true,
            backgroundColor: colors.bg,
            iconTheme: IconThemeData(color: colors.text),
            elevation: 0.0,
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: NoGlowScroll(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10.h),
                      CustomSearchField(
                        hintText: 'search'.tr(),
                      ),
                      SizedBox(height: 25.h),
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 165.w / 300.h,
                          crossAxisSpacing: 16.w,
                          mainAxisSpacing: 16.w,
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return const ProductTemplate(
                            image: 'assets/book.png',
                            title: 'Стив Джобс',
                            author: 'Author',
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
