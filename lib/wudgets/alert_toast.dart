



import 'package:fluttertoast/fluttertoast.dart';

class Alert {

  static void show(message){
    Fluttertoast.showToast(
     // backgroundColor: AppColor.gr,
      msg: message,
    );
  }
}