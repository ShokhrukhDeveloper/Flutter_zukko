import 'package:dartz/dartz.dart';
import 'package:zukko_books/domain/common/failures.dart';
import 'package:zukko_books/domain/main/i_main_facade.dart';
import 'package:zukko_books/infrastructure/exceptions.dart';
import 'package:zukko_books/infrastructure/models/main_data.dart';
import 'package:zukko_books/infrastructure/repositories/zukko_books_apis.dart';
import 'package:zukko_books/infrastructure/services/prefs.dart';
import 'package:zukko_books/domain/common/to_token_ext.dart';

class MainRepository implements IMainFacade {
  final MainService _mainService;
  final PreferenceService _preferenceService;

  MainRepository(this._mainService, this._preferenceService);

  @override
  Future<Either<Failures, Categories>> getCategories() async {
    try {
      final res = await _mainService
          .getCategories('daa4cbeb6f8db6c45854be027a14e7b3b4fa7baa'.toToken);

      if (res.isSuccessful && res.body is Categories) {
        return right(res.body!);
      } else {
        return left(const UnAuthenticated());
      }
    } catch (e) {
      throw NetworkException();
    }
  }
}
