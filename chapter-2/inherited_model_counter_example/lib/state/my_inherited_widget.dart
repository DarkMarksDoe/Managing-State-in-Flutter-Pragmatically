import 'package:flutter/material.dart';
import 'package:inherited_model_counter_example/state/my_counter_inherited_widget.dart';

class MyInheritedWidget extends InheritedModel<int> {
  final MyCounterInheritedWidgetState data;

  const MyInheritedWidget({
    Key? key,
    required Widget child,
    required this.data,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => child != oldWidget;

  @override
  bool updateShouldNotifyDependent(
      covariant InheritedModel<int> oldWidget, Set<int> dependencies) {
    if (dependencies.contains(1)) return true;
    return false;
  }
}
