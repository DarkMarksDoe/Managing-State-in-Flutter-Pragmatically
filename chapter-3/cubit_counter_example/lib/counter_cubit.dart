import 'package:cubit_counter_example/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(initialState);

  static get initialState => const CounterState();

  int countValue = 0;

  increment() async {
    emit(CounterState(count: ++countValue));
  }

  addNumberToCounter(int counter) async {
    countValue = countValue + counter;

    emit(CounterState(count: countValue));
  }
}
