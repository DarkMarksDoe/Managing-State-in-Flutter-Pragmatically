import 'package:flutter/material.dart';
import 'package:inherited_model_counter_example/state/my_inherited_widget.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    print('Button widget builds');
    return ElevatedButton(
      onPressed: () {
        InheritedModel.inheritFrom<MyInheritedWidget>(context, aspect: 2)!
            .data
            .incrementCounter();
      },
      child: const Text('Add'),
    );
  }
}
