import 'package:http/http.dart';

class ApiDataSources {
  final Client _client = Client();

  Future<Response> _sandRequest(Future<Response> Function() call) async {
    try {
      final response = await call();
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return response;
      } else {
        print('ApiDataSources: ${response.statusCode}');
        return response;
      }
    } catch (e) {
      throw Exception('ApiDataSources: $e');
    }
  }

  Future<Response> get(Uri url) async => await _sandRequest(() => _client.get(url));

  Future<Response> post(Uri url, Map<String, String> headers, Map<String, dynamic> body) async => await _sandRequest(() => _client.post(url, headers: headers, body: body));
}