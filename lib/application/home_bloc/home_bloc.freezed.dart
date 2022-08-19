// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {int tabIndex = 2, HomePages pages = const HomePages.home()}) {
    return _HomeState(
      tabIndex: tabIndex,
      pages: pages,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  int get tabIndex => throw _privateConstructorUsedError;
  HomePages get pages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({int tabIndex, HomePages pages});

  $HomePagesCopyWith<$Res> get pages;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? tabIndex = freezed,
    Object? pages = freezed,
  }) {
    return _then(_value.copyWith(
      tabIndex: tabIndex == freezed
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as HomePages,
    ));
  }

  @override
  $HomePagesCopyWith<$Res> get pages {
    return $HomePagesCopyWith<$Res>(_value.pages, (value) {
      return _then(_value.copyWith(pages: value));
    });
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({int tabIndex, HomePages pages});

  @override
  $HomePagesCopyWith<$Res> get pages;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? tabIndex = freezed,
    Object? pages = freezed,
  }) {
    return _then(_HomeState(
      tabIndex: tabIndex == freezed
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as HomePages,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState({this.tabIndex = 2, this.pages = const HomePages.home()});

  @JsonKey(defaultValue: 2)
  @override
  final int tabIndex;
  @JsonKey(defaultValue: const HomePages.home())
  @override
  final HomePages pages;

  @override
  String toString() {
    return 'HomeState(tabIndex: $tabIndex, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex, pages);

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({int tabIndex, HomePages pages}) = _$_HomeState;

  @override
  int get tabIndex;
  @override
  HomePages get pages;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _ChangeTabIndex changeTabIndex({required int index}) {
    return _ChangeTabIndex(
      index: index,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  int get index => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTabIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTabIndex value) changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeTabIndex value)? changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabIndex value)? changeTabIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ChangeTabIndexCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$ChangeTabIndexCopyWith(
          _ChangeTabIndex value, $Res Function(_ChangeTabIndex) then) =
      __$ChangeTabIndexCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$ChangeTabIndexCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$ChangeTabIndexCopyWith<$Res> {
  __$ChangeTabIndexCopyWithImpl(
      _ChangeTabIndex _value, $Res Function(_ChangeTabIndex) _then)
      : super(_value, (v) => _then(v as _ChangeTabIndex));

  @override
  _ChangeTabIndex get _value => super._value as _ChangeTabIndex;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_ChangeTabIndex(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeTabIndex implements _ChangeTabIndex {
  const _$_ChangeTabIndex({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.changeTabIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeTabIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  _$ChangeTabIndexCopyWith<_ChangeTabIndex> get copyWith =>
      __$ChangeTabIndexCopyWithImpl<_ChangeTabIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeTabIndex,
  }) {
    return changeTabIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? changeTabIndex,
  }) {
    return changeTabIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (changeTabIndex != null) {
      return changeTabIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTabIndex value) changeTabIndex,
  }) {
    return changeTabIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeTabIndex value)? changeTabIndex,
  }) {
    return changeTabIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabIndex value)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (changeTabIndex != null) {
      return changeTabIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeTabIndex implements HomeEvent {
  const factory _ChangeTabIndex({required int index}) = _$_ChangeTabIndex;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$ChangeTabIndexCopyWith<_ChangeTabIndex> get copyWith =>
      throw _privateConstructorUsedError;
}
