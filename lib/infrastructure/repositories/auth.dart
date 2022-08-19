import 'package:zukko_books/domain/auth/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:zukko_books/domain/auth/i_auth_facade.dart';
import 'package:zukko_books/infrastructure/services/prefs.dart';

class AuthRepository implements IAuthFacade {
  final PreferenceService _prefs;
  AuthRepository(this._prefs);

  @override
  Option<AuthFailures> checkAuth() {
    final token = _prefs.token;
    if (token != null) {
      return none();
    } else {
      return some(const UnAuthenticated());
    }
  }
}
