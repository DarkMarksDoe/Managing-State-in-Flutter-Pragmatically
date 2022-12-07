import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateNotifierProvider((ref) => CounterNotifier());

class CounterNotifier extends StateNotifier<CounterModel> {
  CounterNotifier() : super(CounterModel(count: 0));
  void increment() => state = CounterModel(count: state.count + 1);
}

class CounterModel {
  int count;

  CounterModel({required this.count});
}

class RiverpodCustomCounterExample extends ConsumerWidget {
  const RiverpodCustomCounterExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod simple counter example'),
      ),
      body: Center(
        // Consumer is a widget that allows you reading providers
        child: Consumer(builder: (context, ref, _) {
          final state = ref.watch(counterProvider) as CounterModel;
          return Text('${state.count}');
        }),
      ),
      floatingActionButton: FloatingActionButton(
        // the read method is a utility to read a provider without listening to it
        onPressed: () => ref.read(counterProvider.notifier).increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
