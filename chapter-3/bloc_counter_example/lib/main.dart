import 'package:bloc_counter_example/bloc/bloc_observer.dart';
import 'package:bloc_counter_example/counter/my_app.dart';
import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}