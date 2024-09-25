class DepartmentModel {
  final int departmentId;
  final String displayName;

  DepartmentModel({required this.departmentId, required this.displayName});

  factory DepartmentModel.fromJson(Map<String, dynamic> json) {
    return DepartmentModel(
      departmentId: json['departmentId'],
      displayName: json['displayName'],
    );
  }
  // departmentId": 1,
  // "displayName": "American Decorative Arts"
}