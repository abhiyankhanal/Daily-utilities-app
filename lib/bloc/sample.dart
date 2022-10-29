import 'package:flutter_bloc/flutter_bloc.dart';

class CounterState {
  int counterValue;
  CounterState({required this.counterValue});
}

enum CounterEvent { increment, decrement }

// class CounterCubit extends Cubit<CounterState> {
//   CounterCubit() : super(CounterState(counterValue: 0));

//   void increment() => emit(CounterState(counterValue: state.counterValue + 1));
//   void decrement() => state.counterValue > 0
//       ? emit(CounterState(counterValue: state.counterValue - 1))
//       : CounterState(counterValue: state.counterValue);
// }

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counterValue: 0)) {
    on<CounterEvent>((event, emit) {
      if (event == CounterEvent.increment) {
        emit(CounterState(counterValue: state.counterValue + 1));
      } else {
        state.counterValue > 0
            ? emit(CounterState(counterValue: state.counterValue - 1))
            : null;
      }
    });
  }
}
