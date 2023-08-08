library flutter_pkg_testing_007;

import 'package:flutter/material.dart';

class BbpsScreen extends StatelessWidget {
  Map<String, dynamic>? data;

  bool isSuccess = false;
  BbpsScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("**** REDIRECTION CHECKS ****");
    print(data!.toString());

    if (data!['redirectionRequest']['msgBdy'] != null &&
        data!['redirectionRequest']['checkSum'] != null) {
      isSuccess = true;
    } else {
      isSuccess = false;
      print("NO SUFFICIENT DATA FOUND");
    }

    return Text(isSuccess
        ? "Successfull Redirected to BBPS Screen"
        : "Failed Redirect to BBPS Screen");
  }
}
