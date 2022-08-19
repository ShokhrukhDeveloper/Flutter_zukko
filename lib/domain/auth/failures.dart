import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class AuthFailures with _$AuthFailures {
  const factory AuthFailures.unAuthenticated() = UnAuthenticated;
}
