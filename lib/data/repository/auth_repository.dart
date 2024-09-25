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

  Future<bool> googleLogin() async {
    final Uri url = Uri.parse('https://api.artsy.net/api/tokens/xapp_token');
    final Map<String, String> headers = {'Content-Type': 'application/json'};
    final Map<String, dynamic> body = {
      'client_id': ApiKeyUtils.artsyClientId,
      'client_secret': ApiKeyUtils.artsyApiSecret,
    };

    final response = await _apiDataSources.post(url, headers, body);

    if (response.statusCode == 201) {
      print('googleLogin response body: ${jsonDecode(response.body)}');
      _artsyLogin(accessToken: jsonDecode(response.body)['token']);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> _artsyLogin({required String accessToken}) async {
    final Uri url = Uri.parse('https://api.artsy.net/api/artists');
    final Map<String, String> headers = {'X-Xapp-Token': accessToken};

    final response = await _apiDataSources.getHeader(url, headers);

    if (response.statusCode == 200) {
      print('artsy response body: ${jsonDecode(response.body)}');
      return true;
    } else {
      return false;
    }
  }
}
