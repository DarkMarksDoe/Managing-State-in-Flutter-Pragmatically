import 'package:redux/redux.dart';
import 'package:redux_counter_example/counter_state.dart';
import 'package:redux_counter_example/redux/reducer.dart';

final store = Store<CounterState>(counterReducer, initialState: CounterState());
