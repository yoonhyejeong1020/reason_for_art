import 'package:reason_for_art_app/data/data_sources/api_data_sources.dart';
import 'package:reason_for_art_app/data/data_sources/shared_prefs.dart';

class ArtworkRepository {
  final ApiDataSources _apiDataSources;
  final SharedPrefs _sharedPrefs;

  ArtworkRepository({required ApiDataSources apiDataSources, required SharedPrefs sharedPrefs}) : _apiDataSources = apiDataSources, _sharedPrefs = sharedPrefs;

}