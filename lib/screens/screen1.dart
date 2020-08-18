import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reference/screens/screen2.dart';

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STATE MGT"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () => gotoScreen2(),
              child: Text("Screen2"),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
                child: Text("change Theme"),
                onPressed: () {
                  if (Get.isDarkMode) {
                    Get.changeTheme(ThemeData.light());
                  } else {
                    Get.changeTheme(ThemeData.dark());
                  }
                })
          ],
        ),
      ),
    );
  }

  gotoScreen2() {
    Get.to(Home2());
  }
}
