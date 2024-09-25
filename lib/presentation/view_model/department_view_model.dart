import 'package:flutter/cupertino.dart';

import '../../data/model/department_model.dart';
import '../../data/repository/department_repository.dart';

class DepartmentViewModel extends ChangeNotifier {
  final DepartmentRepository _departmentRepository;

  DepartmentViewModel({required DepartmentRepository departmentRepository}) : _departmentRepository = departmentRepository;

  List<DepartmentModel> departmentList = [];

  Future<void> getDepartmentList() async {
    departmentList = await _departmentRepository.getDepartmentList();
    notifyListeners();
  }
}