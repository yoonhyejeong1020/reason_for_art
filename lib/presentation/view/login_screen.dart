import 'package:flutter/material.dart';
import 'package:reason_for_art_app/presentation/view/register_screen.dart';

import '../../di/di.dart';
import '../../utils/color_utils.dart';
import '../../utils/context_utils.dart';
import '../view_model/auth_view_model.dart';
import 'component/auth_widget.dart';
import 'component/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthViewModel authViewModel = DI().get<AuthViewModel>();

  @override
  void initState() {
    super.initState();

    authViewModel.userId = TextEditingController();
    authViewModel.userPw = TextEditingController();
  }

  void updateScreen() => setState(() {});

  @override
  void dispose() {
    authViewModel.userId.clear();
    authViewModel.userPw.clear();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _appBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              logoWidget(context: context),
              Text('Login to your Account', style: textTheme(context).titleLarge),
              20.sbH,
              _loginFrom(context: context),
              30.sbH,
              _orWithLoginWidget(context: context),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account?', style: textTheme(context).bodyMedium),
                  5.sbW,
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    )),
                    child: Text('Sign Up', style: TextStyle(color: ColorUtils.primaryColor)),
                  ),
                ],
              ),
              20.sbH,
            ],
          ),
        ),
      ),
    );
  }

  Widget _orWithLoginWidget({required BuildContext context}) => Column(
        children: [
          Row(
            children: [
              Expanded(child: Divider(color: ColorUtils.grayColor04)),
              10.sbW,
              Text('or with login', style: textTheme(context).bodyMedium),
              10.sbW,
              Expanded(child: Divider(color: ColorUtils.grayColor04)),
            ],
          ),
          20.sbH,
          googleLoginBtn(context: context, function: authViewModel.googleLogin),
          10.sbH,
          guestLoginBtn(context: context, function: authViewModel.guestLogin),
        ],
      );

  Widget _loginFrom({required BuildContext context}) => Column(
        children: [
          idTextFieldWidget(
            context: context,
            controller: authViewModel.userId,
          ),
          10.sbH,
          pwTextFieldWidget(
            context: context,
            controller: authViewModel.userPw,
            placeholder: 'User Password',
          ),
          20.sbH,
          authBtn(context: context, text: 'Login')
        ],
      );

  AppBar _appBar() => AppBar();
}
