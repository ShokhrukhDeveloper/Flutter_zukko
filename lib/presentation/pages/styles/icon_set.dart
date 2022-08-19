part of 'theme.dart';

class IconSet {
  final String logo;
  final String protect;
  final String loginMask;
  final String homeMask;
  final String splashLogo;
  final String search;

  final String headphone;
  final String bookmark;
  final String home;
  final String cart;
  final String profile;

  IconSet._({
    required this.logo,
    required this.search,
    required this.protect,
    required this.loginMask,
    required this.homeMask,
    required this.splashLogo,
    required this.headphone,
    required this.bookmark,
    required this.home,
    required this.cart,
    required this.profile,
  });

  static IconSet get create {
    return IconSet._(
      splashLogo: 'assets/images/zukko.png',
      logo: 'assets/svgs/logo.svg',
      search: 'assets/svgs/search.svg',
      protect: 'assets/svgs/protect.svg',
      loginMask: 'assets/svgs/login_mask.svg',
      homeMask: 'assets/svgs/home_mask.svg',
      headphone: 'assets/svgs/headphone_tab.svg',
      bookmark: 'assets/svgs/book_mark_tab.svg',
      home: 'assets/svgs/home_tab.svg',
      cart: 'assets/svgs/shopping_cart_tab.svg',
      profile: 'assets/svgs/user_tab.svg',
    );
  }
}
