import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/controller/expired_vehicles_controller.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen({Key? key}) : super(key: key);

  final ExpiredVehiclesController controller =
      Get.put(ExpiredVehiclesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top News"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Obx(
          () => ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: controller.newsList.length,
              itemBuilder: (context, index) {
                var data = controller.newsList[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(data.title),
                      Image.network(data.urlToImage!),
                      const SizedBox(height: 10),
                      Text(data.description!),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
