part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class IncrementCounterEvent extends CounterEvent{}

class DeIncrementCounterEvent extends CounterEvent{}

class ResetCounterEvent extends CounterEvent{}


