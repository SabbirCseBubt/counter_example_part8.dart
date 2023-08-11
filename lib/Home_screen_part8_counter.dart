import 'package:counter_example_part8/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final CounterController controller =Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
    appBar: AppBar(title:
    Text("Part 8"),
    ),

      body: Center(
        child: Obx(() => Text(controller.counter.toString())),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {

          controller.incrementCounter();
        },
      ),
    );
  }
}
