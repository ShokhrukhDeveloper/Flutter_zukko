import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zukko_books/application/home_bloc/home_bloc.dart';
import 'package:zukko_books/presentation/pages/home/audios.dart';
import 'package:zukko_books/presentation/pages/home/e_books.dart';
import 'package:zukko_books/presentation/pages/home/my_orders.dart';
import 'package:zukko_books/presentation/pages/home/profile.dart';
import 'package:zukko_books/presentation/pages/styles/theme.dart';
import 'package:zukko_books/presentation/pages/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, _) {
        return BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            late Widget body;

            state.pages.map(
              audios: (_) {
                body = const Audios();
              },
              ebooks: (_) {
                body = const EBooks();
              },
              home: (_) {
                body = const Main();
              },
              cart: (_) {
                body = const MyOrders();
              },
              profile: (_) {
                body = const Profile();
              },
            );
            return Scaffold(
              bottomNavigationBar: _navigationBar(
                colors,
                icons,
                state.tabIndex,
                context,
              ),
              body: body,
            );
          },
        );
      },
    );
  }

  Widget _navigationBar(
    CustomColorSet colors,
    IconSet icons,
    int currentIndex,
    BuildContext context,
  ) {
    final tabIcons = [
      icons.headphone,
      icons.bookmark,
      icons.home,
      icons.cart,
      icons.profile,
    ];

    final tabLabels = [
      'audiobook'.tr(),
      'e_books'.tr(),
      'main'.tr(),
      'my_orders'.tr(),
      'profile'.tr(),
    ];
    return BottomNavigationBar(
      selectedItemColor: colors.primary,
      unselectedItemColor: colors.text,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: currentIndex,
      selectedFontSize: 14.sp,
      unselectedFontSize: 14.sp,
      onTap: (i) =>
          context.read<HomeBloc>().add(HomeEvent.changeTabIndex(index: i)),
      type: BottomNavigationBarType.fixed,
      items: List.generate(
        5,
        (index) => BottomNavigationBarItem(
          icon: SvgPicture.asset(
            tabIcons[index],
            color: currentIndex == index ? colors.primary : colors.text,
          ),
          label: tabLabels[index],
        ),
      ),
    );
  }
}
