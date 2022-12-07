import 'package:flutter/material.dart';
import 'package:inherited_widget_counter_example/my_inherited_widget.dart';

class MyCounterInheritedWidget extends StatefulWidget {
  final Widget child;

  const MyCounterInheritedWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  static MyCounterInheritedWidgetState of(BuildContext context) {
    final MyCounterInheritedWidgetState result =
        context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!.data;

    return result;
  }

  @override
  State<StatefulWidget> createState() {
    return MyCounterInheritedWidgetState();
  }
}

class MyCounterInheritedWidgetState extends State<MyCounterInheritedWidget> {
  int _counterValue = 0;

  int get counterValue => _counterValue;

  void incrementCounter() {
    setState(() {
      _counterValue++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      data: this,
      child: widget.child,
    );
  }
}
