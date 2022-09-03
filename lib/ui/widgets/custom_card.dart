import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {Key? key,
      this.userName,
      this.vehicleNo,
      this.vehicle,
      this.duePayment,
      this.renewalDays})
      : super(key: key);

  final String? userName;
  final String? vehicleNo;
  final String? vehicle;
  final String? duePayment;
  final String? renewalDays;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        shadowColor: Colors.black,
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("userName"),
                  Text(userName!),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("vehicleNo"),
                  Text(vehicleNo!),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("vehicle"),
                  Text(vehicle!),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("duePayment"),
                  Text(duePayment!),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("renewalDays"),
                  Text(renewalDays!),
                ],
              ),
            ],
          ),
        ));
  }
}
