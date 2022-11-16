import 'package:flutter/material.dart';
import 'package:fp22/controlle.dart';
import 'package:fp22/menu.dart';
import 'package:get/get.dart';

class slide extends StatelessWidget {
  controller c = Get.put(controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("slider here"),
      ),
      body: Column(
        children: [
          Obx(() => Slider(
                label: "Age",
                value: c.v.value,
                onChanged: (value) {
                  c.change(value);
                },
                max: 80,
                min: 1,
              )),
          Obx(
            () => Text("age: ${c.v.toInt()}"),
          ),
          SizedBox(
            // height: 400,
            // width: 400,
            child: Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Female"),
                    Radio(
                      value: "Female",
                      groupValue: c.grp.value,
                      onChanged: <String>(value) {
                        c.gen(value);
                      },
                    ),
                    Text("male"),
                    Radio(
                      value: "male",
                      groupValue: c.grp.value,
                      onChanged: <String>(value) {
                        c.gen(value);
                      },
                    ),
                  ],
                )),
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(menu());
              },
              child: Text("menu"))
        ],
      ),
    );
  }
}
