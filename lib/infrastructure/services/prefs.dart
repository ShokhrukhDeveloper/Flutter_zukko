import 'package:shared_preferences/shared_preferences.dart';

class PreferenceService {
  static const _token = 'token';

  static SharedPreferences? _preferences;

  PreferenceService._();

  static Future<PreferenceService> get create async {
    _preferences ??= await SharedPreferences.getInstance();
    return PreferenceService._();
  }

  void setToken(String? token) async {
    await _preferences?.setString(_token, token ?? '');
  }

  String? get token => _preferences?.getString(_token);

  void signOut() async => await _preferences?.clear();
}
