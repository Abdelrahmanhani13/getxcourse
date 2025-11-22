import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/controller/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) => Center(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    controller.incrementCounter();
                  },
                  child: Text("+", style: TextStyle(fontSize: 50)),
                ),
                Text("${controller.counter}", style: TextStyle(fontSize: 50)),
                GestureDetector(
                  onTap: () {
                    controller.decrementCounter();
                  },
                  child: Text("-", style: TextStyle(fontSize: 50)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
