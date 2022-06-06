// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/pages/detail/view/detail.dart';
import 'package:sample_project/pages/home/controller/home_controller.dart';

import '../../../services/api_sevice.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final apiService = Get.find<ApiService>();
    final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Count : ${homeController.count}',
                style: TextStyle(fontSize: 25),
              ),
            ),
            FlatButton(
              onPressed: () {
                // print("Hii");
                // print(apiService.FetchTextFromApi());
                // Get.toNamed('/detail');
                homeController.increment();
              },
              child: Text("Increment"),
              color: Colors.black,
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: () {
                // print("Hii");
                // print(apiService.FetchTextFromApi());
                Get.toNamed('/detail');
              },
              child: Text("Go to details"),
              color: Colors.black,
              hoverColor: Colors.red[400],
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: () {
                // print("Hii");
                // print(apiService.FetchTextFromApi());
                // Get.toNamed
                Get.defaultDialog(title: "This is a dialog");
                // Get.snackbar("SnackBar", "A getX snackBar",
                // homeController.increment();
              },
              child: Text("Dialog Button "),
              color: Colors.black,
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: () {
                // print("Hii");
                // print(apiService.FetchTextFromApi());
                // Get.toNamed
                // Get.defaultDialog(title: "This is a dialog");
                Get.snackbar("SnackBar", "A getX snackBar",
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.blue,
                    overlayColor: Colors.teal[700]);
                // homeController.increment();
              },
              child: Text("Snackbar Button "),
              color: Colors.black,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
