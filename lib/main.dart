
import 'package:flutter/material.dart';
import 'package:jaferya_squard/splash_screen_view.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
      const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      navigatorKey: NavigationService.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: "Jaferya Squad",
      //  themeMode: ThemeMode.system,
      // darkTheme: themeProvider.getDarkTheme,
      theme: ThemeData(
        fontFamily: "roboto"
      ),
      home: const SplashScreen(),
    );
  }
}


class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey =
  GlobalKey<NavigatorState>();
}


