import 'package:flutter/material.dart';

class PageA extends StatefulWidget {
  final Function(int) callback;
  int counter;
  PageA({
    super.key,
    required this.counter,
    required this.callback,
  });

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    void incrementCounter() {
      setState(() {
        widget.counter++;
      });
      widget.callback(widget.counter);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page A'),
        backgroundColor: Colors.amber,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${widget.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
