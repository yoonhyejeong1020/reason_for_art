import 'dart:convert';

import '../../utils/api_key_utils.dart';
import '../data_sources/api_data_sources.dart';
import '../data_sources/shared_prefs.dart';

class AuthRepository {
  final ApiDataSources _apiDataSources;
  final SharedPrefs _sharedPrefs;

  AuthRepository({required ApiDataSources apiDataSources, required SharedPrefs sharedPrefs}) : _apiDataSources = apiDataSources, _sharedPrefs = sharedPrefs;

  bool isLogin() => _sharedPrefs.getUserToken() != null || (_sharedPrefs.getUserLogin() ?? false);

  Future<bool> guestLogin() async => await _sharedPrefs.setUserLogin(true);

  Future<bool> artsyLogin() async {
    final Uri url = Uri.parse('https://api.artsy.net/api/tokens/xapp_token');
    final Map<String, String> headers = {'Content-Type': 'application/json'};
    final Map<String, dynamic> body = {
      'client_id': ApiKeyUtils.artsyClientId,
      'client_secret': ApiKeyUtils.artsyApiSecret,
    };

    final response = await _apiDataSources.post(url, headers, body);

    if (response.statusCode == 201) {
      print('artsy response body: ${jsonDecode(response.body)}');
      print('artsy token: ${jsonDecode(response.body)['token']}');
      await _sharedPrefs.setUserToken(jsonDecode(response.body)['token']);
      return true;
    } else {
      return false;
    }
  }
}
