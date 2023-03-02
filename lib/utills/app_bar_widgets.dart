import 'package:flutter/material.dart';
import 'package:word_pair_generators/utills/colors.dart';

// AppBar buildAppBar({
//   String? title,
//   List<Widget>? actions,
//   bool? isGuestEnd,
// }) {
//   return AppBar(
//     iconTheme: IconThemeData(color: kBlackColor),
//     backgroundColor: kWhiteColor,
//     elevation: 0.0,
//     centerTitle: true,
//     leading: IconButton(
//       onPressed: () {
//         Get.back();
//       },
//       icon: Icon(
//         Icons.arrow_back,
//         color: kBlackColor,
//       ),
//     ),
//     title:
//         textSans(title!.toUpperCase(), isGuestEnd == true ? kBlackColor : kBlackColor, fontSize: 14, fontWeight: fBold),
//     actions: actions,
//   );
// }

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
