import 'package:dartz/dartz.dart';
import 'package:zukko_books/domain/auth/failures.dart';

abstract class IAuthFacade {
  Option<AuthFailures> checkAuth();
}
