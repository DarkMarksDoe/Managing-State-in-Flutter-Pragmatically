import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_example/provider_counter.dart';
import 'package:provider_counter_example/provider_counter_example_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
      create: (_) => Counter(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ProviderCounterExamplePage(),
      ),
    );
  }
}


