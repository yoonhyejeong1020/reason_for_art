import 'package:flutter/material.dart';

import '../../di/di.dart';
import '../../utils/color_utils.dart';
import '../../utils/context_utils.dart';
import '../view_model/auth_view_model.dart';
import 'component/auth_widget.dart';
import 'component/text_field_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final AuthViewModel authViewModel = DI().get<AuthViewModel>();

  @override
  void initState() {
    super.initState();

    authViewModel.userId = TextEditingController();
    authViewModel.userPw = TextEditingController();
    authViewModel.confirmPw = TextEditingController();

    authViewModel.addListener(updateScreen);
  }

  void updateScreen() => setState(() {});

  @override
  void dispose() {
    authViewModel.userId.clear();
    authViewModel.userPw.clear();
    authViewModel.confirmPw.clear();

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
              Text('Create your Account', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              15.sbH,
              _registerFrom(context: context),
              30.sbH,
              _orWithLoginWidget(context: context),
              20.sbH,
            ],
          ),
        )
      ),
    );
  }

  Widget _orWithLoginWidget({required BuildContext context}) => Column(
        children: [
          Row(
            children: [
              Expanded(child: Divider(color: ColorUtils.grayColor04)),
              10.sbW,
              Text('or with sign up', style: TextStyle(fontSize: 14)),
              10.sbW,
              Expanded(child: Divider(color: ColorUtils.grayColor04)),
            ],
          ),
          20.sbH,
          guestLoginBtn(context: context, function: authViewModel.guestLogin)
        ],
      );

  Widget _registerFrom({required BuildContext context}) => Column(
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
          10.sbH,
          pwTextFieldWidget(
            context: context,
            controller: authViewModel.confirmPw,
            placeholder: 'Confirm Password',
          ),
          15.sbH,
          authBtn(context: context, text: 'Sign up'),
        ],
      );

  AppBar _appBar() => AppBar();
}
