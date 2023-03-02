import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'colors.dart';

Future<bool?> showToast(String title,) {
  return Fluttertoast.showToast(
      msg: title,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: kBlackColor,
      textColor: Colors.white,
      fontSize: 16.0
  );
}


Text textSans(String title, Color color,
    {double? fontSize,
      FontWeight? fontWeight,
      int? maxLine,
      TextDecoration? textDecoration,
      TextAlign? textAlign,
      double? letterSpace,
      double? height,
      FontStyle? fontStyle}) {
  return Text(
    title,
    style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        decoration: textDecoration,
        fontStyle: fontStyle ?? FontStyle.normal,
        letterSpacing: letterSpace,
        height: height),
    maxLines: maxLine ?? 1,
    overflow: TextOverflow.ellipsis,
    textAlign: textAlign,
    softWrap: true,
  );
}