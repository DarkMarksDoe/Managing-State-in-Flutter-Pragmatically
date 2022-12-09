import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_example/counter_controller.dart';

class PageA extends StatelessWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      builder: (CounterController controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Page A of GetX'),
            backgroundColor: Colors.teal,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  controller.counter.value.count.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () => controller.increment(),
              tooltip: 'Page B',
              child: const Icon(Icons.add)),
        );
      },
    );
  }
}
