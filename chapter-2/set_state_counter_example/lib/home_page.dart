import 'package:flutter/material.dart';
import 'package:set_state_counter_example/my_stateful_widget.dart';
import 'package:set_state_counter_example/page_a.dart';
import 'package:set_state_counter_example/page_b.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 1;

  void _navigate({required bool isPageA}) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          if (isPageA) {
            return PageA(
              counter: _counter,
              callback: (int counter) {
                setState(() {
                  _counter = counter;
                });
              },
            );
          } else {
            return PageB(
              counter: _counter,
              callback: (int counter) {
                setState(() {
                  _counter = counter;
                });
              },
            );
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            MyStatefulWidget(),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () => _navigate(isPageA: true),
            tooltip: 'PageA',
            heroTag: 'PageA',
            child: const Text('Page A'),
          ),
          FloatingActionButton(
            onPressed: () => _navigate(isPageA: false),
            tooltip: 'PageB',
            heroTag: 'PageB',
            child: const Text('Page B'),
          ),
        ],
      ),
    );
  }
}
