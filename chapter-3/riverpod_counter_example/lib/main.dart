import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_example/custom/riverpod_counter_custom.dart';
import 'package:riverpod_counter_example/simple/riverpod_counter_example.dart';
//import 'package:riverpod_counter_example/simple/riverpod_counter_example.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: RiverpodHome());
  }
}

class RiverpodHome extends StatelessWidget {
  const RiverpodHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod examples'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RiverpodSimpleCounterExample(),
                  ),
                );
              },
              child: const Text('Riverpod simple counter example'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RiverpodCustomCounterExample(),
                  ),
                );
              },
              child: const Text('Riverpod custom counter example'),
            ),
          ],
        ),
      ),
    );
  }
}
