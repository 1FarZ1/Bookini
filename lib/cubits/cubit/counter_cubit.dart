import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial(0));
  void increament() {
    emit(CounterChangeState(state.val + 1));
  }

  void decreament() {
    emit(CounterChangeState(state.val - 1));
  }

  void reset() {
    emit(CounterInitial(0));
  }
}
