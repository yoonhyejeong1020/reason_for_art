import 'dart:convert';

import '../../utils/api_key_utils.dart';
import '../data_sources/api_data_sources.dart';
import '../data_sources/shared_prefs.dart';
import '../model/auth_model.dart';

class AuthRepository {
  final ApiDataSources _apiDataSources;
  final SharedPrefs _sharedPrefs;

  AuthRepository({required ApiDataSources apiDataSources, required SharedPrefs sharedPrefs}) : _apiDataSources = apiDataSources, _sharedPrefs = sharedPrefs;

  bool isLogin() => _sharedPrefs.getUserToken() != null || (_sharedPrefs.getUserLogin() ?? false);

  Future<bool> guestLogin() async => await _sharedPrefs.setUserLogin(true);

  Future<bool> login(AuthModel loginModel) async {
    final Uri url = Uri.parse('https://api.artsy.net/api/tokens/xapp_token');
    final Map<String, String> headers = {'content-type': 'application/json'};

    final response = await _apiDataSources.post(url, headers, loginModel.toJson());

    print('token: ${jsonDecode(response.body)['token']}');
    print(jsonDecode(response.body));

    return await _sharedPrefs.setUserToken(jsonDecode(response.body)['token']);
  }

  Future<bool> googleLogin({required String accessToken}) async {
    final Uri url = Uri.parse('https://api.artsy.net/oauth2/access_token&redirect_uri=https://www.googleapis.com/oauth2/v1/certs&response_type=code');
    final Map<String, String> headers = {'Content-type': 'application/x-www-form-urlencoded'};
    final Map<String, String> body = {
      'client_id': ApiKeyUtils.googleClientId,
      'client_secret': ApiKeyUtils.artsyApiSecret,
      'code': accessToken,
      'grant_type': 'authorization_code',
    };
    print(body);
    final response = await _apiDataSources.post(url, headers, body);

    if (response.statusCode == 200 || response.statusCode == 201) {
      print(jsonDecode(response.body)['access_token']);
      print(jsonDecode(response.body)['expires_in']);
      return true;
    } else {
      print('googleLogin ${response.statusCode}');
      return false;
    }
  }
}
