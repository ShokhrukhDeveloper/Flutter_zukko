import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:no_glow_scroll/no_glow_scroll.dart';
import 'package:zukko_books/presentation/common/category_template.dart';
import 'package:zukko_books/presentation/common/custom_text_field.dart';
import 'package:zukko_books/presentation/common/product_template.dart';
import 'package:zukko_books/presentation/pages/routes.dart';
import 'package:zukko_books/presentation/pages/styles/theme.dart';
import 'package:zukko_books/presentation/pages/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, _) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: colors.primary,
                child: Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(icons.homeMask),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(24.w, 34.h, 0, 34.h),
                        child: Text(
                          'greeting'.tr(args: ['Ismoilbek']),
                          style: fonts.headline6.copyWith(
                            color: colors.white,
                            fontSize: 24.sp,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(28.r),
                            topRight: Radius.circular(28.r),
                          ),
                          color: colors.bg,
                        ),
                        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 0),
                        child: NoGlowScroll(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 16.h),
                                CustomSearchField(
                                  hintText: 'search'.tr(),
                                ),
                                SizedBox(height: 22.h),
                                _title(
                                  'categories'.tr(),
                                  true,
                                  () {
                                    Navigator.push(
                                        context, Routes.allCategory(context));
                                  },
                                  fonts,
                                  colors,
                                ),
                                GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    childAspectRatio: 1,
                                    crossAxisSpacing: 16.w,
                                    mainAxisSpacing: 16.w,
                                  ),
                                  itemCount: 6,
                                  itemBuilder: (context, index) {
                                    return CategoryTemplate(
                                      image: 'assets/image.png',
                                      title: 'Жахон адабиёти',
                                      onPressed: () {
                                        Navigator.push(
                                            context, Routes.category(context));
                                      },
                                    );
                                  },
                                ),
                                SizedBox(height: 24.h),
                                _title(
                                  'best_of_the_day'.tr(),
                                  false,
                                  () {},
                                  fonts,
                                  colors,
                                ),
                                GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
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
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  _title(
    String title,
    bool showAll,
    VoidCallback onPressed,
    FontSet fonts,
    CustomColorSet colors,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: fonts.headline6,
        ),
        Visibility(
          visible: showAll,
          child: TextButton(
            onPressed: onPressed,
            child: Text(
              'all',
              style: fonts.subtitle2.copyWith(color: colors.link),
            ),
          ),
        ),
      ],
    );
  }
}
