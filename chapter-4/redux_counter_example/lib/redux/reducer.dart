import 'package:redux_counter_example/counter_state.dart';
import 'package:redux_counter_example/enums.dart';

CounterState counterReducer(CounterState state, dynamic action) {
  if (action == EnumActions.increment) {
    return CounterState(count: state.count + 1);
  }

  if (action == EnumActions.decrement) {
    return CounterState(count: state.count - 1);
  }

  return state;
}
