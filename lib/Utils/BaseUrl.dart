import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sporket/Utils/AppColors.dart';


class BaseUrl {
  static const url =
      "http://ec2-3-108-252-72.ap-south-1.compute.amazonaws.com:8000/";
  static const testurl =
      "http://ec2-13-232-195-38.ap-south-1.compute.amazonaws.com/";
}

class SucessMessage {
  final String? message;

  SucessMessage({this.message});
  suceessMessage() {
    return Fluttertoast.showToast(
        msg: message!, backgroundColor: AppColors.colorGreen);
  }
}

class FailureMessage {
  final String? message;

  FailureMessage({this.message});
  failedMessage() {
    return Fluttertoast.showToast(
        msg: message!, backgroundColor: AppColors.colorRed);
  }
}

class CustomLoader {
  loadingIcon() {
    return CircularProgressIndicator();
  }
}

class GifLoader {
  gifLoader() {
    return Image.asset(
      "assets/loading.gif",
      width: 100.0,
    );
  }
}
