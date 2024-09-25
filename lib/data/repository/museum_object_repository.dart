import 'dart:convert';
import 'dart:math';

import '../data_sources/api_data_sources.dart';
import '../data_sources/shared_prefs.dart';
import '../model/museum_object_model.dart';

class MuseumObjectRepository {
  final ApiDataSources _apiDataSources;
  final SharedPrefs _sharedPrefs;

  MuseumObjectRepository({required ApiDataSources apiDataSources, required SharedPrefs sharedPrefs}) : _apiDataSources = apiDataSources, _sharedPrefs = sharedPrefs;

  Future<int> randomId() async {
    final Uri url = Uri.parse('https://collectionapi.metmuseum.org/public/collection/v1/objects');
    final response = await _apiDataSources.get(url);

    return Random().nextInt(jsonDecode(response.body)['total']);
  }

  Future<MuseumObjectModel> _getMuseumObjectModel({required Uri url}) async {
    final response = await _apiDataSources.get(url);

    if (response.statusCode == 404) return getRandomMuseumObjectModel();
    if (MuseumObjectModel.fromJson(jsonDecode(response.body)).primaryImage == '') return getRandomMuseumObjectModel();

    final Map<String, dynamic> jsonMap = jsonDecode(response.body);
    return MuseumObjectModel.fromJson(jsonMap);
  }

  Future<MuseumObjectModel> getRandomMuseumObjectModel() async {
    final randomMuseumObjectId = await randomId();
    final Uri url = Uri.parse('https://collectionapi.metmuseum.org/public/collection/v1/objects/$randomMuseumObjectId');
    print('getRandomMuseumObjectModel $url');
    final response = await _apiDataSources.get(url);

    if (response.statusCode == 404) return getRandomMuseumObjectModel();
    if (MuseumObjectModel.fromJson(jsonDecode(response.body)).primaryImage == '') return getRandomMuseumObjectModel();
    await _sharedPrefs.setTodayArt(randomMuseumObjectId);

    final Map<String, dynamic> jsonMap = jsonDecode(response.body);
    return MuseumObjectModel.fromJson(jsonMap);
  }

  // Future<MuseumObjectModel> getTodayArt() async {
  //   final Uri url = Uri.parse('https://collectionapi.metmuseum.org/public/collection/v1/objects/${_sharedPrefs.getTodayArt()}');
  //   return _getMuseumObjectModel(url: url);
  // }
}