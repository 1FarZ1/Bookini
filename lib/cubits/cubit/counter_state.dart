part of 'counter_cubit.dart';

@immutable
abstract class CounterState {
   int val;
  CounterState(this.val);
}

class CounterInitial extends CounterState {
  CounterInitial(super.val);
}

class CounterChangeState extends CounterState {
  CounterChangeState(super.val);
 
}
