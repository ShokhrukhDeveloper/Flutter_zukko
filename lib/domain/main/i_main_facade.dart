import 'package:dartz/dartz.dart';
import 'package:zukko_books/domain/common/failures.dart';
import 'package:zukko_books/infrastructure/models/main_data.dart';

abstract class IMainFacade {
  Future<Either<Failures, Categories>> getCategories();
}
