// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/pages/home/controller/home_controller.dart';
import 'package:sample_project/services/api_sevice.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final apiService = Get.find<ApiService>();
    final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // print(apiService.FetchTextFromApi());
            Get.back();
            // homeController.increment();
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Count on Detail Screen: ${homeController.count}',
                style: TextStyle(fontSize: 25),
              ),
            ),
            FlatButton(
              onPressed: () {
                homeController.increment();
              },
              child: Text("Increment"),
              textColor: Colors.white,
              color: Colors.black,
            ),
            IconButton(
                iconSize: 50,
                color: Colors.black,
                hoverColor: Colors.red,
                onPressed: () {
                  homeController.decrement();
                },
                icon: Icon(Icons.exposure_minus_1))
          ],
        ),
      ),
    );
  }
}
