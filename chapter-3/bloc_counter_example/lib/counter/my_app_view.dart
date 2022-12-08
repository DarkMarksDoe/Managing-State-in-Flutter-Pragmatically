// {@template app_view}
import 'package:bloc_counter_example/counter/pages/counter_page.dart';
import 'package:bloc_counter_example/counter/themes/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A [StatelessWidget] that:
/// * reacts to state changes in the [ThemeCubit]
/// and updates the theme of the [MaterialApp].
/// * renders the [CounterPage].
/// {@endtemplate}
class AppView extends StatelessWidget {
  /// {@macro app_view}
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (_, theme) {
        return MaterialApp(
          theme: theme,
          home: const CounterPage(),
        );
      },
    );
  }
}