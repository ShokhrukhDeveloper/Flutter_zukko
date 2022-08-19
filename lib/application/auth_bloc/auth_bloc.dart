import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zukko_books/infrastructure/repositories/auth.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _auth;
  AuthBloc(this._auth) : super(const _Initial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(checkAuth: (_CheckAuth value) async* {
      final res = _auth.checkAuth();

      yield* res.fold(() async* {
        yield const AuthState.authenticated();
      }, (a) async* {
        yield const AuthState.unAuthenticated();
      });
    });
  }
}
