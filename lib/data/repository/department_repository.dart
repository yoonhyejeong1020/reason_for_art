import 'dart:convert';

import '../data_sources/api_data_sources.dart';
import '../model/department_model.dart';

class DepartmentRepository {
  final ApiDataSources _apiDataSources;

  DepartmentRepository({required ApiDataSources apiDataSources}) : _apiDataSources = apiDataSources;

  Future<List<DepartmentModel>> getDepartmentList() async {
    final Uri url = Uri.parse('https://collectionapi.metmuseum.org/public/collection/v1/departments');
    final response = await _apiDataSources.get(url);

    final List<dynamic> jsonList = jsonDecode(utf8.decode(response.bodyBytes))['departments'];
    return jsonList.map((e) => DepartmentModel.fromJson(e)).toList();
  }
}