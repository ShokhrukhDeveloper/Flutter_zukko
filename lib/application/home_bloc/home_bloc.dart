import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zukko_books/domain/home/home_pages.dart';
import 'package:zukko_books/domain/home/home_pages_ext.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _HomeState());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    yield* event.map(
      changeTabIndex: _changeTabIndex,
    );
  }

  Stream<HomeState> _changeTabIndex(_ChangeTabIndex value) async* {
    yield state.copyWith(
      tabIndex: value.index,
      pages: value.index.toHomePages,
    );
  }
}
