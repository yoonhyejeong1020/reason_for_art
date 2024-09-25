import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static final SharedPrefs _instance = SharedPrefs._internal();
  factory SharedPrefs() => _instance;

  late SharedPreferences _prefs;

  final String _userTokenKey = 'user_token_key';
  final String _userLoginKey = 'user_login';
  final String _todayArtKey = 'today_art';

  Future<void> init() async => _prefs = await SharedPreferences.getInstance();

  Future<bool> setUserToken(String value) async => await _prefs.setString(_userTokenKey, value);
  String? getUserToken() => _prefs.getString(_userTokenKey);

  Future<bool> setUserLogin(bool value) async => await _prefs.setBool(_userLoginKey, value);
  bool? getUserLogin() => _prefs.getBool(_userLoginKey);

  Future<bool> setTodayArt(int value) async => await _prefs.setInt(_todayArtKey, value);
  int? getTodayArt() => _prefs.getInt(_todayArtKey);

  SharedPrefs._internal();
}