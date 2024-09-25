import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../data/repository/auth_repository.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthRepository _authRepository;

  AuthViewModel({required AuthRepository authRepository}) : _authRepository = authRepository;

  late TextEditingController userId;
  late TextEditingController userPw;
  late TextEditingController confirmPw;

  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  bool isLogin() => _authRepository.isLogin();

  Future<void> guestLogin() async => await _authRepository.guestLogin();

  Future<bool> googleLogin() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      if (googleSignInAccount == null) return false;
      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
      // final String authCode = await get

      print(googleSignInAuthentication.accessToken);
      return await _authRepository.googleLogin(accessToken: googleSignInAuthentication.accessToken!);
    } catch (e) {
      print(e);
      return false;
    }
  }


  // GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  // @override
  // void initState() {
  //   super.initState();
  //   _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
  //     setState(() {
  //       _currentUser = account;
  //     });
  //   });
  //   _googleSignIn.signInSilently();
  // }
  //
  // Future<void> _handleSignIn() async {
  //   try {
  //     print(await _googleSignIn.signIn());
  //     await _googleSignIn.signIn();
  //   } catch (error) {
  //     print(error);
  //   }
  // }

  // Future<void> _handleSignOut() async {
  //   await _googleSignIn.disconnect();
  // }

  // Future<void> login() async {
  //   final AuthModel loginModel = AuthModel(id: '1409389f110d68d6f7b1', pw: 'a59124553baecd77dda35f33762cf762');
  //   await _authRepository.login(loginModel);
  // }

}