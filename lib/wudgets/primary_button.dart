


import 'package:flutter/material.dart';
import 'package:jaferya_squard/wudgets/app_color.dart';
import 'package:jaferya_squard/wudgets/constant.dart';





class PrimaryButton extends StatelessWidget {

  final Function onPressed;
  final String title;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? borderColor;
  final bool expanded;
  final double? width;
  final double? elevation;
  final Widget? icon;
  final Color? titleColor;

  const PrimaryButton({Key? key,
    required this.onPressed,
    required this.title,
    this.padding,
    this.color,
    this.borderColor,
    this.expanded=true,
    this.width,
    this.elevation,
    this.icon,
    this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: width?? (expanded?double.infinity:width),
      child: TextButton(

        style: TextButton.styleFrom(
          elevation: elevation??5,
            shape:  RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(Constant.globalRadius)),
                side: BorderSide(color: borderColor??color??AppColor.primaryColorLight)
            ),
            padding: padding??  const EdgeInsets.all(12),
          backgroundColor: color??AppColor.primaryColorLight,
          shadowColor: AppColor.blue,

        ),onPressed: (){
        onPressed();

      },child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
        children: [
          icon==null?Container():Padding(
            padding: const EdgeInsets.fromLTRB(0,0,5,0,),
            child: icon,
          ),
          Text(title,
          style: const TextStyle(
            color: AppColor.white,
            fontSize: 18
          )),
        ],
      )),
    );
  }
}
