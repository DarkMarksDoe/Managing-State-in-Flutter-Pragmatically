import 'package:flutter/material.dart';
import 'package:inherited_model_counter_example/state/my_inherited_widget.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    print('Text widget builds');
    return Text(
      InheritedModel.inheritFrom<MyInheritedWidget>(context, aspect: 1)!
          .data
          .counterValue
          .toString(),
    );
  }
}
