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
    final idList = jsonList.map((e) => e['api_link']).toList();
    print(idList[Random().nextInt(idList.length)]);
    return idList[Random().nextInt(idList.length)];
  }

  Future<ArtworkModel> getRandomArtworkModel() async {
    final String randomArtworkUrl = await _getRandomArtworkId();
    final Uri url = Uri.parse(randomArtworkUrl);

    final response = await _apiDataSources.get(url);

    if (response.statusCode == 404) return await getRandomArtworkModel();
    if (ArtworkModel.fromJson(jsonDecode(response.body)).imageId == '') return await getRandomArtworkModel();
    print(jsonDecode(response.body)['data']);

    final Map<String, dynamic> jsonMap = jsonDecode(response.body)['data'];
    return ArtworkModel.fromJson(jsonMap);
  }
}