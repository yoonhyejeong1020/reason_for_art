import 'package:flutter/material.dart';
import 'package:reason_for_art_app/utils/context_utils.dart';

import '../../../utils/color_utils.dart';
import '../main_tab_screen.dart';

Widget logoWidget({required BuildContext context}) => Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          40.sbH,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/reason_for_art_logo.png', height: 50),
              10.sbW,
              Text(
                'Reason For Art',
                style: TextStyle(
                  fontSize: 20,
                  color: ColorUtils.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          90.sbH,
        ],
      ),
    );

Widget authBtn({required BuildContext context, required String text}) =>
    Container(
      width: ssW(context),
      height: 50,
      decoration: BoxDecoration(
        color: ColorUtils.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
    );

Widget guestLoginBtn({
  required BuildContext context,
  required Future<void> Function() function,
}) => GestureDetector(
        onTap: () async {
          await function();
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainTabScreen()));
        },
        child: Container(
          width: ssW(context),
          height: 60,
          decoration: BoxDecoration(
            color: ColorUtils.grayColor03,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text('Continue as a guest', style: TextStyle(fontSize: 14)),
              Positioned(left: 20, child: Icon(Icons.person)),
            ],
          ),
        ),
      );
