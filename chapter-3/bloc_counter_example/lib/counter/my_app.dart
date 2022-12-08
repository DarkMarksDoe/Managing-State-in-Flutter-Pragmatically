import 'package:bloc_counter_example/counter/my_app_view.dart';
import 'package:bloc_counter_example/counter/themes/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template app}
/// A [StatelessWidget] that:
/// * uses [bloc](https://pub.dev/packages/bloc) and
/// [flutter_bloc](https://pub.dev/packages/flutter_bloc)
/// to manage the state of a counter and the app theme.
/// {@endtemplate}
class MyApp extends StatelessWidget {
  /// {@macro app}
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (_) => ThemeCubit(),
      child: const AppView(),
    );
  }
}