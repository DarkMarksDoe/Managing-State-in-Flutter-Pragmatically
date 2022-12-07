import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider((ref) => 0);

class RiverpodSimpleCounterExample extends ConsumerWidget {
  const RiverpodSimpleCounterExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('Building Counter Example Scaffold');
    return Scaffold(
      appBar: AppBar(title: const Text('Riverpod simple counter example')),
      body: Center(
        child: Consumer(builder: (context, ref, child) {
          int count = ref.watch(counterProvider);
          return Text('$count');
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).state++,
        child: const Icon(Icons.add),
      ),
    );
  }
}
