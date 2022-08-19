import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth.g.dart';

abstract class SignIn implements Built<SignIn, SignInBuilder> {
  String? get email;

  String? get password;

  String? get token;

  @BuiltValueField(wireName: 'firebase_token')
  String? get fcmToken;

  SignIn._();
  factory SignIn([Function(SignInBuilder b) updates]) = _$SignIn;

  static Serializer<SignIn> get serializer => _$signInSerializer;
}
