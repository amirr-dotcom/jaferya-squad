
import 'package:flutter/material.dart';
import 'package:jaferya_squard/meeting.dart';
import 'package:jaferya_squard/wudgets/app_color.dart';
import 'package:jaferya_squard/wudgets/coloured_safe_area.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigateToNextPage();
  } 

  void _navigateToNextPage() async {

    await Future.delayed(const Duration(milliseconds: 3000), () {
Navigator.pushReplacement(context, MaterialPageRoute(builder:
(context)=> Meeting()
));
    });
  }


  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  ColoredSafeArea(
      child: Material(
        color: AppColor.primaryColorLight,
        child: Stack(
          children: [
            Image.asset('assets/bg.png',
            fit: BoxFit.fitWidth,),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 0,
              child: Center(
                child: Image.asset('assets/logo_tr.png',
                  height: 200,),
              ),
            ),
          ],
        )
      ),
    );
  }
}
