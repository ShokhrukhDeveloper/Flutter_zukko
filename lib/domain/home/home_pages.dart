import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_pages.freezed.dart';

@freezed
abstract class HomePages with _$HomePages {
  const factory HomePages.audios() = _Audios;
  const factory HomePages.ebooks() = _EBooks;
  const factory HomePages.home() = _Home;
  const factory HomePages.cart() = _Cart;
  const factory HomePages.profile() = _Profile;
}
