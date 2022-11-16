import 'package:flutter/material.dart';
import 'package:fp22/controlle.dart';
import 'package:get/get.dart';

class menu extends StatelessWidget {
  controller c = Get.put(controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu here"),
      ),
      body: Container(
        child: Column(
          children: [
            Obx(() => CheckboxListTile(
                  subtitle: Text("Rs.120/-"),
                  title: Text("grill sandwich"),
                  value: c.v1[0],
                  onChanged: <bool>(value) {
                    c.add(0, value, 120);
                  },
                )),
            Obx(() => CheckboxListTile(
                  subtitle: Text("Rs.100/-"),
                  title: Text("Manchurian"),
                  value: c.v1[1],
                  onChanged: <bool>(value) {
                    c.add(1, value, 100);
                  },
                )),
            Obx(
              () => CheckboxListTile(
                subtitle: Text("Rs.150/-"),
                title: Text("pizza"),
                value: c.v1[2],
                onChanged: <bool>(value) {
                  c.add(2, value, 150);
                },
              ),
            ),
            Obx(() => CheckboxListTile(
                  subtitle: Text("Rs.140/-"),
                  title: Text("garlic bread"),
                  value: c.v1[3],
                  onChanged: <bool>(value) {
                    c.add(3, value, 140);
                  },
                )),
            Obx(() => CheckboxListTile(
                  subtitle: Text("Rs.70/-"),
                  title: Text("doughnut"),
                  value: c.v1[4],
                  onChanged: <bool>(value) {
                    c.add(4, value, 70);
                  },
                )),
            Obx(() => CheckboxListTile(
                  subtitle: Text("Rs.80/-"),
                  title: Text("burger"),
                  value: c.v1[5],
                  onChanged: <bool>(value) {
                    c.add(5, value, 80);
                  },
                )),
            Obx(() => Text("Total bill: ${c.total}"))
          ],
        ),
      ),
    );
  }
}
