class AuthModel {
  final String id;
  final String pw;

  AuthModel({required this.id, required this.pw});

  Map<String, dynamic> toJson() => {
    'client_id': id,
    'client_secret': pw,
  };
}