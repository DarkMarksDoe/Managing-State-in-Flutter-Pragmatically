import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_example/counter_controller.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController controller = Get.put(CounterController());
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
