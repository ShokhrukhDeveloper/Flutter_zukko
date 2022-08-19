import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.dart';
part 'main_event.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent,MainState>{
  MainBloc() : super(const MainState.initial()) {
  }
}