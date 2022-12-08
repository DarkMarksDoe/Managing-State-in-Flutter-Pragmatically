import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_counter_example/counter_state.dart';
import 'package:redux_counter_example/enums.dart';
import 'package:redux_counter_example/redux/store.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Redux Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            StoreConnector<CounterState, String>(
              converter: (store) => store.state.count.toString(),
              builder: (context, count) {
                return Text(
                  count,
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
            heroTag: 'increment',
            onPressed: () => store.dispatch(EnumActions.increment),
            child: const Icon(Icons.exposure_plus_1),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: () => store.dispatch(EnumActions.decrement),
            child: const Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
    );
  }
}
