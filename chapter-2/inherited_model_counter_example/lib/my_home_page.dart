import 'package:flutter/material.dart';
import 'package:inherited_model_counter_example/my_page_a.dart';
import 'package:inherited_model_counter_example/my_page_b.dart';
import 'package:inherited_model_counter_example/widgets/my_button.dart';
import 'package:inherited_model_counter_example/widgets/my_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    void _navigate({required bool isPageA}) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            if (isPageA) {
              return const PageA();
            } else {
              return const PageB();
            }
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Counter value:'),
            MyText(),
            MyButton(),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
