





import 'package:flutter/material.dart';
import 'package:jaferya_squard/wudgets/app_color.dart';

class ColoredSafeArea extends StatelessWidget {
  final Widget child;
  final Color? color;

  const ColoredSafeArea({Key? key, required this.child, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? AppColor.primaryColorLight,
      child: SafeArea(
        child: child,
      ),
    );
  }
}

