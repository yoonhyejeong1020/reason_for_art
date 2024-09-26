import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../../data/repository/auth_repository.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthRepository _authRepository;

  AuthViewModel({required AuthRepository authRepository}) : _authRepository = authRepository;

  late TextEditingController userId;
  late TextEditingController userPw;
  late TextEditingController confirmPw;

  bool isLogin() => _authRepository.isLogin();

  Future<bool> guestLogin() async => await _authRepository.guestLogin();

  Future<bool> artsyLogin() async => await _authRepository.artsyLogin();
}