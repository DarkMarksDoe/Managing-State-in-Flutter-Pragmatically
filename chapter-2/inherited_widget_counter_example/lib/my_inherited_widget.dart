import 'package:flutter/material.dart';
import 'package:inherited_widget_counter_example/my_counter_inherited_widget.dart';

class MyInheritedWidget extends InheritedWidget {
  final MyCounterInheritedWidgetState data;

  const MyInheritedWidget({
    Key? key,
    required Widget child,
    required this.data,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => child != oldWidget;
}
