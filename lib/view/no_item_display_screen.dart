import 'package:flutter/material.dart';
import 'package:word_pair_generators/utills/colors.dart';
import 'package:word_pair_generators/utills/widgets.dart';

class NoItemDisplayWidget extends StatelessWidget {
  const NoItemDisplayWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Center(
        child: textSans("No items to display", kBlackColor, fontWeight: FontWeight.w600),
      ),
    );
  }
}
