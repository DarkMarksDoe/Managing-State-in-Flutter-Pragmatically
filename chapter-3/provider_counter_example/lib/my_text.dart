import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_example/provider_counter.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('${context.watch<Counter>().count}',
        style: Theme.of(context).textTheme.headline4);
  }
}
