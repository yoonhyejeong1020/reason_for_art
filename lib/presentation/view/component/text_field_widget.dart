import 'package:flutter/cupertino.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/context_utils.dart';

Widget idTextFieldWidget({
  required BuildContext context,
  required TextEditingController controller,
}) =>
    SizedBox(
      width: ssW(context),
      height: 50,
      child: CupertinoTextField(
        controller: controller,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(color: ColorUtils.grayColor02, borderRadius: BorderRadius.circular(10)),
        style: textTheme(context).bodyMedium,
        placeholder: 'User Id',
        placeholderStyle: TextStyle(fontSize: 12, color: ColorUtils.grayColor04),
      ),
    );

Widget pwTextFieldWidget({
  required BuildContext context,
  required TextEditingController controller,
  required String placeholder,
}) =>
    SizedBox(
      width: ssW(context),
      height: 50,
      child: CupertinoTextField(
        obscureText: true,
        controller: controller,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(color: ColorUtils.grayColor02, borderRadius: BorderRadius.circular(10)),
        style: textTheme(context).bodyMedium,
        placeholder: placeholder,
        placeholderStyle: TextStyle(fontSize: 12, color: ColorUtils.grayColor04),
      ),
    );

Widget searchTextFieldWidget({
  required BuildContext context,
  required TextEditingController controller,
  required String placeholder,
}) => SizedBox(
  height: 60,
  child: CupertinoTextField(
    controller: controller,
    padding: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(color: ColorUtils.grayColor02, borderRadius: BorderRadius.circular(10)),
    style: textTheme(context).bodyMedium,
    placeholder: placeholder,
    placeholderStyle: textTheme(context).bodySmall,
  ),
);