// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SignIn> _$signInSerializer = new _$SignInSerializer();

class _$SignInSerializer implements StructuredSerializer<SignIn> {
  @override
  final Iterable<Type> types = const [SignIn, _$SignIn];
  @override
  final String wireName = 'SignIn';

  @override
  Iterable<Object?> serialize(Serializers serializers, SignIn object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.token;
    if (value != null) {
      result
        ..add('token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fcmToken;
    if (value != null) {
      result
        ..add('firebase_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SignIn deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SignInBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firebase_token':
          result.fcmToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SignIn extends SignIn {
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? token;
  @override
  final String? fcmToken;

  factory _$SignIn([void Function(SignInBuilder)? updates]) =>
      (new SignInBuilder()..update(updates)).build();

  _$SignIn._({this.email, this.password, this.token, this.fcmToken})
      : super._();

  @override
  SignIn rebuild(void Function(SignInBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignInBuilder toBuilder() => new SignInBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignIn &&
        email == other.email &&
        password == other.password &&
        token == other.token &&
        fcmToken == other.fcmToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, email.hashCode), password.hashCode), token.hashCode),
        fcmToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignIn')
          ..add('email', email)
          ..add('password', password)
          ..add('token', token)
          ..add('fcmToken', fcmToken))
        .toString();
  }
}

class SignInBuilder implements Builder<SignIn, SignInBuilder> {
  _$SignIn? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  SignInBuilder();

  SignInBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _token = $v.token;
      _fcmToken = $v.fcmToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignIn other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignIn;
  }

  @override
  void update(void Function(SignInBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignIn build() {
    final _$result = _$v ??
        new _$SignIn._(
            email: email, password: password, token: token, fcmToken: fcmToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
