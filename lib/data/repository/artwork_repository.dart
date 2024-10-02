import 'dart:convert';
import 'dart:math';

import 'package:reason_for_art_app/data/data_sources/api_data_sources.dart';
import 'package:reason_for_art_app/data/data_sources/shared_prefs.dart';

import '../model/artwork_model.dart';

class ArtworkRepository {
  final ApiDataSources _apiDataSources;
  final SharedPrefs _sharedPrefs;

  ArtworkRepository({required ApiDataSources apiDataSources, required SharedPrefs sharedPrefs}) : _apiDataSources = apiDataSources, _sharedPrefs = sharedPrefs;

  Future<String> _getRandomArtworkId() async {
    final Uri url = Uri.parse('https://api.artic.edu/api/v1/artworks');

    final response = await _apiDataSources.get(url);
    final List<dynamic> jsonList = jsonDecode(response.body)['data'];
    final List idList = jsonList.map((e) => e['api_link']).toList();

    int totalPage = jsonDecode(response.body)['total_pages'];
    String? nextUrl = jsonDecode(response.body)['next_url'];
    print('1 next Url $nextUrl');

    for (int i = 1; i < totalPage; i++) {
      if (nextUrl != null) {
        final Uri url = Uri.parse(nextUrl);
        final response = await _apiDataSources.get(url);

        final List<dynamic> jsonList = jsonDecode(response.body)['body'];
        idList.addAll(jsonList.map((e) => e['api_link']));

        nextUrl = jsonDecode(response.body)['next_url'];
        print('2 next Url $nextUrl');
      }
    }

    return idList[Random().nextInt(idList.length)];

    // final Uri url = Uri.parse('https://api.artic.edu/api/v1/artworks');
    //
    // final response = await _apiDataSources.get(url);
    //
    // final List<dynamic> jsonList = jsonDecode(response.body)['data'];
    // final idList = jsonList.map((e) => e['api_link']).toList();
    // print(idList[Random().nextInt(idList.length)]);
    // return idList[Random().nextInt(idList.length)];
  }

  Future<ArtworkModel> getRandomArtworkModel() async {
    final String randomArtworkUrl = await _getRandomArtworkId();
    final Uri url = Uri.parse(randomArtworkUrl);

    final response = await _apiDataSources.get(url);

    if (response.statusCode == 404) return await getRandomArtworkModel();
    if (ArtworkModel.fromJson(jsonDecode(response.body)).imageId == null && ArtworkModel.fromJson(jsonDecode(response.body)).description == null) return await getRandomArtworkModel();
    print(jsonDecode(response.body)['data']);

    final Map<String, dynamic> jsonMap = jsonDecode(response.body)['data'];
    return ArtworkModel.fromJson(jsonMap);
  }
}