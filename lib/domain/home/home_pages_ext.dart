import 'package:zukko_books/domain/home/home_pages.dart';

extension HomePagesX on int {
  HomePages get toHomePages {
    switch (this) {
      case 0:
        return const HomePages.audios();
      case 1:
        return const HomePages.ebooks();
      case 2:
        return const HomePages.home();
      case 3:
        return const HomePages.cart();
      case 4:
        return const HomePages.profile();
      default:
        return const HomePages.home();
    }
  }
}
