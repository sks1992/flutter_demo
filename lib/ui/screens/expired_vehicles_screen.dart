import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/controller/expired_vehicles_controller.dart';
import '../widgets/custom_card.dart';

class ExpiredVehiclesScreen extends StatelessWidget {
  ExpiredVehiclesScreen({Key? key}) : super(key: key);

  final ExpiredVehiclesController controller =
      Get.put(ExpiredVehiclesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ExpiredVehicles"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: controller.expiredVehiclesList.length,
              itemBuilder: (context, index) {
                var data = controller.expiredVehiclesList[index];
                return CustomCard(
                  duePayment: data.renewalDays.toString(),
                  renewalDays: data.duePayment.toString(),
                  userName: data.userName.toString(),
                  vehicle: data.vehicle.toString(),
                  vehicleNo: data.vehicleNo.toString(),
                );
              }),
        ),
      ),
    );
  }
}
