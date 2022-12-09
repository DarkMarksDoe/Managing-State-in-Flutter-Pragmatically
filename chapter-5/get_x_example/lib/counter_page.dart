import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_example/counter_controller.dart';
import 'package:get_x_example/page_a.dart';
import 'package:get_x_example/page_b.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example GetX'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            GetBuilder<CounterController>(
              builder: (CounterController controller) {
                return Text(
                  controller.counter.value.count.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () => Get.to(const PageA()),
            tooltip: 'Page A',
            child: const Text('Page A'),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            onPressed: () => Get.to(const PageB()),
            tooltip: 'Page B',
            child: const Text('Page B'),
          ),
        ],
      ),
    );
  }
}
