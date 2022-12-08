import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_counter_example/counter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Counter counter = Counter();

    return Scaffold(
      appBar: AppBar(
        title: const Text('MobX Counter Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (_) => Text(
                '${counter.value}',
                style: const TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: counter.increment,
            child: const Icon(Icons.exposure_plus_1),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: counter.increment,
            child: const Icon(Icons.exposure_minus_1),
          ),
        ],
      )
    );
  }
}
